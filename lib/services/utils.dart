String getShortAddress(String address) {
  if (address.length <= 13) {
    return address;
  }
  String start = address.substring(0, 7);
  String end = address.substring(address.length - 6);
  return "$start…$end";
}
