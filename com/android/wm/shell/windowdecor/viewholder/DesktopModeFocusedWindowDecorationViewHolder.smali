.class public final Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeFocusedWindowDecorationViewHolder;
.super Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeWindowDecorationViewHolder;
.source ""


# instance fields
.field private final captionHandle:Landroid/widget/ImageButton;

.field private final captionView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;)V
    .registers 6

    const-string/jumbo v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "onCaptionTouchListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "onCaptionButtonClickListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeWindowDecorationViewHolder;-><init>(Landroid/view/View;)V

    sget v0, Lcom/android/wm/shell/R$id;->desktop_mode_caption:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "rootView.findViewById(R.id.desktop_mode_caption)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeFocusedWindowDecorationViewHolder;->captionView:Landroid/view/View;

    sget v1, Lcom/android/wm/shell/R$id;->caption_handle:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string/jumbo v1, "rootView.findViewById(R.id.caption_handle)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeFocusedWindowDecorationViewHolder;->captionHandle:Landroid/widget/ImageButton;

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p1, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final getCaptionHandleBarColor(Landroid/app/ActivityManager$RunningTaskInfo;)I
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeWindowDecorationViewHolder;->shouldUseLightCaptionColors(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeWindowDecorationViewHolder;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/wm/shell/R$color;->desktop_mode_caption_handle_bar_light:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    goto :goto_1b

    :cond_11
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeWindowDecorationViewHolder;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/wm/shell/R$color;->desktop_mode_caption_handle_bar_dark:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    :goto_1b
    return p0
.end method


# virtual methods
.method public bindData(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 5

    const-string/jumbo v0, "taskInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeFocusedWindowDecorationViewHolder;->captionView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const-string/jumbo v2, "null cannot be cast to non-null type android.graphics.drawable.GradientDrawable"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeFocusedWindowDecorationViewHolder;->captionHandle:Landroid/widget/ImageButton;

    invoke-direct {p0, p1}, Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeFocusedWindowDecorationViewHolder;->getCaptionHandleBarColor(Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result p0

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method
