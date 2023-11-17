/// Represents a model for onboarding screens with an image, title, and description.
class OnBoardingModel {
  /// The URL of the image associated with the onboarding screen.
  final String _imageUrl;

  /// The title text for the onboarding screen.
  final String? _title;

  /// The description text for the onboarding screen.
  final String? _description;

  /// Creates an instance of [OnBoardingModel].
  ///
  /// Parameters:
  /// - [_imageUrl]: The URL of the image associated with the onboarding screen.
  /// - [_title]: The title text for the onboarding screen.
  /// - [_description]: The description text for the onboarding screen.
  OnBoardingModel(this._imageUrl, this._title, this._description);

  /// Gets the URL of the image associated with the onboarding screen.
  get imageUrl => _imageUrl;

  /// Gets the title text for the onboarding screen.
  get title => _title;

  /// Gets the description text for the onboarding screen.
  get description => _description;
}
