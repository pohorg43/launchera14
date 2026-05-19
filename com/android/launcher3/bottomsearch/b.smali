.class public final synthetic Lcom/android/launcher3/bottomsearch/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/OplusLauncherModel;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Z

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/OplusLauncherModel;Ljava/lang/String;ZZ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/bottomsearch/b;->a:Lcom/android/launcher3/OplusLauncherModel;

    iput-object p2, p0, Lcom/android/launcher3/bottomsearch/b;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/launcher3/bottomsearch/b;->c:Z

    iput-boolean p4, p0, Lcom/android/launcher3/bottomsearch/b;->d:Z

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/bottomsearch/b;->a:Lcom/android/launcher3/OplusLauncherModel;

    iget-object v1, p0, Lcom/android/launcher3/bottomsearch/b;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/launcher3/bottomsearch/b;->c:Z

    iget-boolean p0, p0, Lcom/android/launcher3/bottomsearch/b;->d:Z

    invoke-static {v0, v1, v2, p0}, Lcom/android/launcher3/bottomsearch/BottomSearchImpl;->f(Lcom/android/launcher3/OplusLauncherModel;Ljava/lang/String;ZZ)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
