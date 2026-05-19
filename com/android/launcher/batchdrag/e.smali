.class public final synthetic Lcom/android/launcher/batchdrag/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/launcher/batchdrag/BatchDragViewManager$4;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/batchdrag/BatchDragViewManager$4;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/batchdrag/e;->a:Lcom/android/launcher/batchdrag/BatchDragViewManager$4;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/batchdrag/e;->a:Lcom/android/launcher/batchdrag/BatchDragViewManager$4;

    invoke-static {p0}, Lcom/android/launcher/batchdrag/BatchDragViewManager$4;->a(Lcom/android/launcher/batchdrag/BatchDragViewManager$4;)V

    return-void
.end method
