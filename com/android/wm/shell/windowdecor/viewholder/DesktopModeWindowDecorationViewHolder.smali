.class public abstract Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeWindowDecorationViewHolder;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    const-string/jumbo v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "rootView.context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeWindowDecorationViewHolder;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public abstract bindData(Landroid/app/ActivityManager$RunningTaskInfo;)V
.end method

.method public final getContext()Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeWindowDecorationViewHolder;->context:Landroid/content/Context;

    return-object p0
.end method

.method public final shouldUseLightCaptionColors(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .registers 4

    const-string/jumbo p0, "taskInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    move-result p0

    invoke-static {p0}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Color;->luminance()F

    move-result p0

    float-to-double p0, p0

    const-wide/high16 v0, 0x3fe0000000000000L  # 0.5

    cmpg-double p0, p0, v0

    if-gez p0, :cond_1d

    const/4 p0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p0, 0x0

    :goto_1e
    return p0
.end method
