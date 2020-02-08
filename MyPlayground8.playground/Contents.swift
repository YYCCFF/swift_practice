let trafficLight:String = "赤"

switch trafficLight {
  case "赤":
    print("止まりましょう")
    break;
  case "黄":
    print("もうすぐ赤です")
    break;
  case "青":
    print("進みましょう")
    break;
  default:
    print("赤・黄・緑のいずれかを入力してください。")
    break;
}

