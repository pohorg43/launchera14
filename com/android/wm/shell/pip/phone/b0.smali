.class public final synthetic Lcom/android/wm/shell/pip/phone/b0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/pip/phone/PipController$PipImpl;

.field public final synthetic b:Z

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/phone/PipController$PipImpl;ZI)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/b0;->a:Lcom/android/wm/shell/pip/phone/PipController$PipImpl;

    iput-boolean p2, p0, Lcom/android/wm/shell/pip/phone/b0;->b:Z

    iput p3, p0, Lcom/android/wm/shell/pip/phone/b0;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/b0;->a:Lcom/android/wm/shell/pip/phone/PipController$PipImpl;

    iget-boolean v1, p0, Lcom/android/wm/shell/pip/phone/b0;->b:Z

    iget p0, p0, Lcom/android/wm/shell/pip/phone/b0;->c:I

    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;->c(Lcom/android/wm/shell/pip/phone/PipController$PipImpl;ZI)V

    return-void
.end method
