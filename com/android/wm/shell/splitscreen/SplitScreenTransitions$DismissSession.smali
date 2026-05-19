.class public Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;
.super Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DismissSession"
.end annotation


# instance fields
.field public mDismissTop:I
    .annotation build Lcom/android/wm/shell/splitscreen/SplitScreen$StageType;
    .end annotation
.end field

.field public final mReason:I

.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;Landroid/os/IBinder;II)V
    .registers 6

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;Landroid/os/IBinder;Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionConsumedCallback;Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;)V

    iput p3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;->mReason:I

    iput p4, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;->mDismissTop:I

    return-void
.end method
