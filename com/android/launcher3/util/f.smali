.class public final synthetic Lcom/android/launcher3/util/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/util/MultiAdditivePropertyFactory;

.field public final synthetic b:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/MultiAdditivePropertyFactory;Ljava/lang/Integer;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/util/f;->a:Lcom/android/launcher3/util/MultiAdditivePropertyFactory;

    iput-object p2, p0, Lcom/android/launcher3/util/f;->b:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/util/f;->a:Lcom/android/launcher3/util/MultiAdditivePropertyFactory;

    iget-object p0, p0, Lcom/android/launcher3/util/f;->b:Ljava/lang/Integer;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/util/MultiAdditivePropertyFactory;->a(Lcom/android/launcher3/util/MultiAdditivePropertyFactory;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/android/launcher3/util/MultiAdditivePropertyFactory$MultiAdditiveProperty;

    move-result-object p0

    return-object p0
.end method
