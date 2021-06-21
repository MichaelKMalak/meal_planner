extension ListHelpers on List {
  List except(List another) {
    final thisSet = Set.from(this);
    final anotherSet = Set.from(another);
    return List.from(thisSet.difference(anotherSet));
  }
}
