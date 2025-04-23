import 'package:boss_level_challenge/storyModel.dart';

class StoryController {
  int _index = 0;

  final List<StoryModel> _stories = [
    StoryModel(
      storyText:
          'Bạn tỉnh dậy trong một khu rừng bí ẩn, xung quanh là sương mù dày đặc. Trước mặt bạn là hai con đường: một dẫn vào rừng sâu, một hướng về phía một ngọn đồi có ánh sáng le lói.',
      choice1: 'Đi vào rừng.',
      choice2: 'Leo lên ngọn đồi.',
    ),
    StoryModel(
      storyText:
          'Bạn bước vào rừng và gặp một ông lão đang đun một nồi nước sôi. Ông ta nhìn bạn với ánh mắt kỳ lạ và hỏi: "Con muốn tìm gì trong khu rừng này?"',
      choice1: 'Tôi tìm đường về nhà.',
      choice2: 'Tôi tìm báu vật cổ xưa.',
    ),
    StoryModel(
      storyText:
          'Bạn leo lên đồi và phát hiện một ngôi đền cổ. Bên trong có một cánh cửa đá khắc chữ cổ: "Người dũng cảm thì mở, người yếu đuối thì quay về."',
      choice1: 'Mở cánh cửa.',
      choice2: 'Quay về rừng.',
    ),
    StoryModel(
      storyText:
          'Ông lão mỉm cười, đưa cho bạn một chiếc la bàn phát sáng. "Đi về hướng Bắc, con sẽ tìm thấy thứ mình cần." Bạn cảm ơn và rời đi trong ánh sáng bình minh.',
      choice1: 'Chơi lại',
      choice2: '',
    ),
    StoryModel(
      storyText:
          'Ông lão biến mất ngay trước mắt bạn. Một con rắn khổng lồ xuất hiện từ trong bụi rậm. Bạn không kịp phản ứng và bị nuốt chửng.',
      choice1: 'Chơi lại',
      choice2: '',
    ),
    StoryModel(
      storyText:
          'Cánh cửa mở ra, bạn bước vào căn phòng chứa đầy ánh sáng và những cổ vật huyền thoại. Bạn đã tìm thấy kho báu!',
      choice1: 'Chơi lại',
      choice2: '',
    ),
  ];

  StoryModel get currentStory => _stories[_index];

  void next(int choice) {
    switch (_index) {
      case 0:
        _index = (choice == 1) ? 1 : 2;
        break;
      case 1:
        _index = (choice == 1) ? 3 : 4;
        break;
      case 2:
        _index = (choice == 1) ? 5 : 1;
        break;
      default:
        restart();
    }
  }

  void restart() {
    _index = 0;
  }

  bool hasSecondChoice() {
    return _index == 0 || _index == 1 || _index == 2;
  }
}
