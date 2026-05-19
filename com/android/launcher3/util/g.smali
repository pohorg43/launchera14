.class public final synthetic Lcom/android/launcher3/util/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/util/MultiAdditivePropertyFactory$MultiAdditiveProperty;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/MultiAdditivePropertyFactory$MultiAdditiveProperty;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/util/g;->a:Lcom/android/launcher3/util/MultiAdditivePropertyFactory$MultiAdditiveProperty;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/util/g;->a:Lcom/android/launcher3/util/MultiAdditivePropertyFactory$MultiAdditiveProperty;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Lcom/android/launcher3/util/MultiAdditivePropertyFactory$MultiAdditiveProperty;

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/util/MultiAdditivePropertyFactory$MultiAdditiveProperty;->a(Lcom/android/launcher3/util/MultiAdditivePropertyFactory$MultiAdditiveProperty;Ljava/lang/Integer;Lcom/android/launcher3/util/MultiAdditivePropertyFactory$MultiAdditiveProperty;)V

    return-void
.end method
