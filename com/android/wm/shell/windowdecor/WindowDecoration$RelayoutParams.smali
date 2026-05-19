.class Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/windowdecor/WindowDecoration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RelayoutParams"
.end annotation


# instance fields
.field public mApplyStartTransactionOnDraw:Z

.field public mCaptionHeightId:I

.field public mCaptionWidthId:I

.field public mCaptionX:I

.field public mCaptionY:I

.field public mCornerRadius:I

.field public mLayoutResId:I

.field public mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field public mShadowRadiusId:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reset()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mLayoutResId:I

    iput v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCaptionHeightId:I

    iput v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCaptionWidthId:I

    iput v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mShadowRadiusId:I

    iput v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCornerRadius:I

    iput v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCaptionX:I

    iput v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCaptionY:I

    iput-boolean v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mApplyStartTransactionOnDraw:Z

    return-void
.end method
