.class public final synthetic Lcom/android/launcher3/model/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/util/RunnableList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/RunnableList;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/p;->a:Lcom/android/launcher3/util/RunnableList;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/model/p;->a:Lcom/android/launcher3/util/RunnableList;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    return-void
.end method
