.class public final synthetic Lcom/android/launcher3/k1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/OplusLauncherProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/OplusLauncherProvider;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/k1;->a:Lcom/android/launcher3/OplusLauncherProvider;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/k1;->a:Lcom/android/launcher3/OplusLauncherProvider;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/launcher3/OplusLauncherProvider;->h(Lcom/android/launcher3/OplusLauncherProvider;Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
