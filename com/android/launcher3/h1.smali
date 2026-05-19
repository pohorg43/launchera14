.class public final synthetic Lcom/android/launcher3/h1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/OplusLauncherModel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/OplusLauncherModel;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/h1;->a:Lcom/android/launcher3/OplusLauncherModel;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/h1;->a:Lcom/android/launcher3/OplusLauncherModel;

    invoke-static {p0}, Lcom/android/launcher3/OplusLauncherModel;->i(Lcom/android/launcher3/OplusLauncherModel;)Lcom/android/launcher3/model/BgDataModel;

    move-result-object p0

    return-object p0
.end method
