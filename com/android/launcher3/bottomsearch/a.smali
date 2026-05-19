.class public final synthetic Lcom/android/launcher3/bottomsearch/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/OplusLauncherModel;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/OplusLauncherModel;Ljava/lang/String;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/bottomsearch/a;->a:Lcom/android/launcher3/OplusLauncherModel;

    iput-object p2, p0, Lcom/android/launcher3/bottomsearch/a;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/launcher3/bottomsearch/a;->c:Z

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/bottomsearch/a;->a:Lcom/android/launcher3/OplusLauncherModel;

    iget-object v1, p0, Lcom/android/launcher3/bottomsearch/a;->b:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/android/launcher3/bottomsearch/a;->c:Z

    invoke-static {v0, v1, p0}, Lcom/android/launcher3/bottomsearch/BottomSearchImpl;->b(Lcom/android/launcher3/OplusLauncherModel;Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
