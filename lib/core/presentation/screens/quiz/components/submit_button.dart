part of '../screen.dart';

class _SubmitButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const _SubmitButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(_borderRadius * 2),
        ),
        padding: const EdgeInsetsDirectional.all(_innerHorizontalPadding),
        child: Text(
          text,
          style: TextStyle(
            color: Theme.of(context).colorScheme.onPrimary,
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
