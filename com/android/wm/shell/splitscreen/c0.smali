.class public final synthetic Lcom/android/wm/shell/splitscreen/c0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/SingleInstanceRemoteListener$RemoteCall;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/wm/shell/splitscreen/c0;->a:I

    iput p2, p0, Lcom/android/wm/shell/splitscreen/c0;->b:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/wm/shell/splitscreen/c0;->a:I

    iget p0, p0, Lcom/android/wm/shell/splitscreen/c0;->b:I

    check-cast p1, Lcom/android/wm/shell/splitscreen/ISplitScreenListener;

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$1;->a(IILcom/android/wm/shell/splitscreen/ISplitScreenListener;)V

    return-void
.end method
