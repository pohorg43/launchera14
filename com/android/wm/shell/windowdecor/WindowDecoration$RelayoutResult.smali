.class Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/windowdecor/WindowDecoration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RelayoutResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ":",
        "Lcom/android/wm/shell/windowdecor/TaskFocusStateConsumer;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public mHeight:I

.field public mRootView:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public mWidth:I


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

    iput v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mWidth:I

    iput v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mHeight:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    return-void
.end method
