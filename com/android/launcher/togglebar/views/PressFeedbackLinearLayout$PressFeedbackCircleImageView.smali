.class public final Lcom/android/launcher/togglebar/views/PressFeedbackLinearLayout$PressFeedbackCircleImageView;
.super Landroid/widget/ImageView;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/togglebar/views/PressFeedbackLinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PressFeedbackCircleImageView"
.end annotation


# instance fields
.field private mPressFeedbackHandler:Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher/togglebar/views/PressFeedbackLinearLayout$PressFeedbackCircleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher/togglebar/views/PressFeedbackLinearLayout$PressFeedbackCircleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/togglebar/views/PressFeedbackLinearLayout$PressFeedbackCircleImageView;->mPressFeedbackHandler:Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->drawCircleColor(Landroid/graphics/Canvas;)V

    :cond_c
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 6

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/android/launcher/togglebar/views/PressFeedbackLinearLayout$PressFeedbackCircleImageView;->mPressFeedbackHandler:Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;

    if-eqz p1, :cond_12

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result p0

    invoke-virtual {p1, p2, p0}, Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;->onLayout(II)V

    :cond_12
    return-void
.end method

.method public final setPressFeedbackHandler(Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/togglebar/views/PressFeedbackLinearLayout$PressFeedbackCircleImageView;->mPressFeedbackHandler:Lcom/android/launcher/togglebar/animation/PressFeedbackHandler;

    return-void
.end method
