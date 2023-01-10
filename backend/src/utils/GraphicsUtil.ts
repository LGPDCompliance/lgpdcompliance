import Database from '../database';
import {DataQuizAnswer, QuizStatistics, AmountTrack, AmountDay} from '../types';

class GraphicsUtil {
  static async getDatasAnswers():Promise<DataQuizAnswer[] | null> {
    const database = Database.getInstance();
    try {
      const quizAnswers = await database.quizAnswer.findMany({
        select: {
          score: true,
          createdAt: true,
        },
      });

      return quizAnswers;
    } catch (err) {
      console.log(err);
    }
    return null;
  }

  static getTracks(): AmountTrack[] {
    const tracks: AmountTrack[] = [];
    const trackValues = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100];

    trackValues.forEach((item, index)=> {
      const previous = index === 0 ? 0 : trackValues[index - 1];
      tracks.push({track: item, amount: 0, description: `${previous} - ${item}`});
    });

    return tracks;
  }

  static getDays():AmountDay[] {
    const week:AmountDay[] = [];
    const daysOfWeek: string[] = [
      'Domingo',
      'Segunda',
      'Terça',
      'Quarta',
      'Quinta',
      'Sexta',
      'Sábado',
    ];

    daysOfWeek.forEach((item, index)=>{
      week.push({writingDay: item, day: index, amount: 0});
    });

    return week;
  }

  // receive the quiz and select the track with base in the your score
  static selectTrack(data: DataQuizAnswer, tracks: AmountTrack[]) {
    tracks.sort((a, b) => a.track - b.track);
    const result = tracks.some((item, index)=> {
      if (data.score<=item.track) {
        item.amount ++;
        return data.score<=item.track;
      }
    });
    return result;
  }

  // receive the quiz and select the day of week
  static selectDay(data: DataQuizAnswer, days: AmountDay[], date:Date) {
    const quizDate = new Date(data.createdAt);
    if (quizDate.getTime() > date.getTime()) {
      const day = quizDate.getDay();
      days.some((item)=> {
        if (day == item.day) {
          item.amount ++;
          return day == item.day;
        }
      });
    }
  }

  static getLastDate(sub:number): Date {
    const date = new Date();
    date.setDate(date.getDate() - sub);
    return date;
  }

  static calculateAmounts(datas:DataQuizAnswer[], tracks: AmountTrack[], days: AmountDay[]): QuizStatistics {
    const date = this.getLastDate(7);

    datas.forEach((item)=>{
      this.selectTrack(item, tracks);
      this.selectDay(item, days, date);
    });

    const result = {
      weekAmount: days,
      amountEachTrack: tracks,
    };

    return result;
  }

  static async getGraphicalData(): Promise<QuizStatistics | null> {
    const tracks = this.getTracks();
    const days = this.getDays();
    const datas = await this.getDatasAnswers();
    if (datas) {
      const result = this.calculateAmounts(datas, tracks, days);
      return result;
    }
    return null;
  }
}

export default GraphicsUtil;

