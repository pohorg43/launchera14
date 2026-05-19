.class public final synthetic Lcom/oplus/zoom/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/oplus/zoom/ZoomRootTaskController$1;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/zoom/ZoomRootTaskController$1;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/zoom/l;->a:Lcom/oplus/zoom/ZoomRootTaskController$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/l;->a:Lcom/oplus/zoom/ZoomRootTaskController$1;

    invoke-static {p0}, Lcom/oplus/zoom/ZoomRootTaskController$1;->a(Lcom/oplus/zoom/ZoomRootTaskController$1;)V

    return-void
.end method
