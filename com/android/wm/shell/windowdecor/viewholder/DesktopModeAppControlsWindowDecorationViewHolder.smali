.class public final Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeAppControlsWindowDecorationViewHolder;
.super Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeWindowDecorationViewHolder;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeAppControlsWindowDecorationViewHolder$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeAppControlsWindowDecorationViewHolder$Companion;

.field private static final TAG:Ljava/lang/String; = "DesktopModeAppControlsWindowDecorationViewHolder"


# instance fields
.field private final appIconImageView:Landroid/widget/ImageView;

.field private final appNameTextView:Landroid/widget/TextView;

.field private final captionHandle:Landroid/view/View;

.field private final captionView:Landroid/view/View;

.field private final closeWindowButton:Landroid/widget/ImageButton;

.field private final expandMenuButton:Landroid/widget/ImageButton;

.field private final openMenuButton:Landroid/view/View;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeAppControlsWindowDecorationViewHolder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeAppControlsWindowDecorationViewHolder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeAppControlsWindowDecorationViewHolder;->Companion:Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeAppControlsWindowDecorationViewHolder$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .registers 12

    const-string/jumbo v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "onCaptionTouchListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "onCaptionButtonClickListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appName"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appIcon"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeWindowDecorationViewHolder;-><init>(Landroid/view/View;)V

    sget v0, Lcom/android/wm/shell/R$id;->desktop_mode_caption:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "rootView.findViewById(R.id.desktop_mode_caption)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeAppControlsWindowDecorationViewHolder;->captionView:Landroid/view/View;

    sget v1, Lcom/android/wm/shell/R$id;->caption_handle:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string/jumbo v2, "rootView.findViewById(R.id.caption_handle)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeAppControlsWindowDecorationViewHolder;->captionHandle:Landroid/view/View;

    sget v2, Lcom/android/wm/shell/R$id;->open_menu_button:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string/jumbo v3, "rootView.findViewById(R.id.open_menu_button)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeAppControlsWindowDecorationViewHolder;->openMenuButton:Landroid/view/View;

    sget v3, Lcom/android/wm/shell/R$id;->close_window:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string/jumbo v4, "rootView.findViewById(R.id.close_window)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeAppControlsWindowDecorationViewHolder;->closeWindowButton:Landroid/widget/ImageButton;

    sget v4, Lcom/android/wm/shell/R$id;->expand_menu_button:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const-string/jumbo v5, "rootView.findViewById(R.id.expand_menu_button)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeAppControlsWindowDecorationViewHolder;->expandMenuButton:Landroid/widget/ImageButton;

    sget v4, Lcom/android/wm/shell/R$id;->application_name:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const-string/jumbo v5, "rootView.findViewById(R.id.application_name)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeAppControlsWindowDecorationViewHolder;->appNameTextView:Landroid/widget/TextView;

    sget v5, Lcom/android/wm/shell/R$id;->application_icon:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string/jumbo v5, "rootView.findViewById(R.id.application_icon)"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeAppControlsWindowDecorationViewHolder;->appIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v3, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, p2}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v4, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, p5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private final getCaptionAppNameTextColor(Landroid/app/ActivityManager$RunningTaskInfo;)I
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeWindowDecorationViewHolder;->shouldUseLightCaptionColors(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeWindowDecorationViewHolder;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/wm/shell/R$color;->desktop_mode_caption_app_name_light:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    goto :goto_1b

    :cond_11
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeWindowDecorationViewHolder;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/wm/shell/R$color;->desktop_mode_caption_app_name_dark:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    :goto_1b
    return p0
.end method

.method private final getCaptionCloseButtonColor(Landroid/app/ActivityManager$RunningTaskInfo;)I
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeWindowDecorationViewHolder;->shouldUseLightCaptionColors(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeWindowDecorationViewHolder;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/wm/shell/R$color;->desktop_mode_caption_close_button_light:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    goto :goto_1b

    :cond_11
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeWindowDecorationViewHolder;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/wm/shell/R$color;->desktop_mode_caption_close_button_dark:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    :goto_1b
    return p0
.end method

.method private final getCaptionExpandButtonColor(Landroid/app/ActivityManager$RunningTaskInfo;)I
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeWindowDecorationViewHolder;->shouldUseLightCaptionColors(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeWindowDecorationViewHolder;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/wm/shell/R$color;->desktop_mode_caption_expand_button_light:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    goto :goto_1b

    :cond_11
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeWindowDecorationViewHolder;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/wm/shell/R$color;->desktop_mode_caption_expand_button_dark:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    :goto_1b
    return p0
.end method


# virtual methods
.method public bindData(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 4

    const-string/jumbo v0, "taskInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeAppControlsWindowDecorationViewHolder;->captionView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type android.graphics.drawable.GradientDrawable"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeAppControlsWindowDecorationViewHolder;->closeWindowButton:Landroid/widget/ImageButton;

    invoke-direct {p0, p1}, Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeAppControlsWindowDecorationViewHolder;->getCaptionCloseButtonColor(Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeAppControlsWindowDecorationViewHolder;->expandMenuButton:Landroid/widget/ImageButton;

    invoke-direct {p0, p1}, Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeAppControlsWindowDecorationViewHolder;->getCaptionExpandButtonColor(Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeAppControlsWindowDecorationViewHolder;->appNameTextView:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeAppControlsWindowDecorationViewHolder;->getCaptionAppNameTextColor(Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
