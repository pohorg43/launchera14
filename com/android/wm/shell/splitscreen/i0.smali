.class public final synthetic Lcom/android/wm/shell/splitscreen/i0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl$1;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl$1;IIIZ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/i0;->a:Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl$1;

    iput p2, p0, Lcom/android/wm/shell/splitscreen/i0;->b:I

    iput p3, p0, Lcom/android/wm/shell/splitscreen/i0;->c:I

    iput p4, p0, Lcom/android/wm/shell/splitscreen/i0;->d:I

    iput-boolean p5, p0, Lcom/android/wm/shell/splitscreen/i0;->e:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/i0;->a:Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl$1;

    iget v1, p0, Lcom/android/wm/shell/splitscreen/i0;->b:I

    iget v2, p0, Lcom/android/wm/shell/splitscreen/i0;->c:I

    iget v3, p0, Lcom/android/wm/shell/splitscreen/i0;->d:I

    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/i0;->e:Z

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl$1;->b(Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl$1;IIIZ)V

    return-void
.end method
