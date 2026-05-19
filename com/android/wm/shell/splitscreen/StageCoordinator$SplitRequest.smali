.class Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/splitscreen/StageCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SplitRequest"
.end annotation


# instance fields
.field public mActivatePosition:I
    .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
    .end annotation
.end field

.field public mActivateTaskId:I

.field public mActivateTaskId2:I

.field public mStartIntent:Landroid/content/Intent;

.field public mStartIntent2:Landroid/content/Intent;

.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;III)V
    .registers 5

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;->mActivateTaskId:I

    iput p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;->mActivateTaskId2:I

    iput p4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;->mActivatePosition:I

    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;ILandroid/content/Intent;I)V
    .registers 5

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;->mActivateTaskId:I

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;->mStartIntent:Landroid/content/Intent;

    iput p4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;->mActivatePosition:I

    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/content/Intent;I)V
    .registers 4

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;->mStartIntent:Landroid/content/Intent;

    iput p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;->mActivatePosition:I

    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/content/Intent;Landroid/content/Intent;I)V
    .registers 5

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;->mStartIntent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;->mStartIntent2:Landroid/content/Intent;

    iput p4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;->mActivatePosition:I

    return-void
.end method
