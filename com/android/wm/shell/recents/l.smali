.class public final synthetic Lcom/android/wm/shell/recents/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/function/Consumer;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/recents/l;->a:Ljava/util/function/Consumer;

    iput-object p2, p0, Lcom/android/wm/shell/recents/l;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/recents/l;->a:Ljava/util/function/Consumer;

    iget-object p0, p0, Lcom/android/wm/shell/recents/l;->b:Ljava/util/List;

    invoke-static {v0, p0}, Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl;->a(Ljava/util/function/Consumer;Ljava/util/List;)V

    return-void
.end method
