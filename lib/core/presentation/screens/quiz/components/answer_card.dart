part of '../screen.dart';

const _innerHorizontalPadding = 15.0;
const _innerVerticalPadding = 10.0;

class _AnswerCard extends StatelessWidget {
  final String content;
  final VoidCallback onPressed;

  const _AnswerCard({
    Key? key,
    required this.content,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      customBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(_borderRadius)),
      splashColor: Theme.of(context).primaryColor,
      highlightColor: Theme.of(context).primaryColor,
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          horizontal: _innerHorizontalPadding,
          vertical: _innerVerticalPadding,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: Theme.of(context).primaryColor.withOpacity(0.5),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(_borderRadius),
        ),
        child: Text(
          content,
          style: TextStyle(
            color: Theme.of(context).colorScheme.onSurface.withOpacity(0.8),
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
