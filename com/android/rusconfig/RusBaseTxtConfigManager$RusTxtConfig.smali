.class public final Lcom/android/rusconfig/RusBaseTxtConfigManager$RusTxtConfig;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/rusconfig/RusBaseTxtConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RusTxtConfig"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRusBaseTxtConfigManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RusBaseTxtConfigManager.kt\ncom/android/rusconfig/RusBaseTxtConfigManager$RusTxtConfig\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,239:1\n37#2,2:240\n*S KotlinDebug\n*F\n+ 1 RusBaseTxtConfigManager.kt\ncom/android/rusconfig/RusBaseTxtConfigManager$RusTxtConfig\n*L\n217#1:240,2\n*E\n"
    }
.end annotation


# instance fields
.field private final itemArrays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/rusconfig/RusBaseTxtConfigManager$ItemArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/android/rusconfig/RusBaseTxtConfigManager$RusTxtConfig;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/rusconfig/RusBaseTxtConfigManager$ItemArray;",
            ">;)V"
        }
    .end annotation

    const-string v0, "itemArrays"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/rusconfig/RusBaseTxtConfigManager$RusTxtConfig;->itemArrays:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_9

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_9
    invoke-direct {p0, p1}, Lcom/android/rusconfig/RusBaseTxtConfigManager$RusTxtConfig;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/rusconfig/RusBaseTxtConfigManager$RusTxtConfig;Ljava/util/List;ILjava/lang/Object;)Lcom/android/rusconfig/RusBaseTxtConfigManager$RusTxtConfig;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget-object p1, p0, Lcom/android/rusconfig/RusBaseTxtConfigManager$RusTxtConfig;->itemArrays:Ljava/util/List;

    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/rusconfig/RusBaseTxtConfigManager$RusTxtConfig;->copy(Ljava/util/List;)Lcom/android/rusconfig/RusBaseTxtConfigManager$RusTxtConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/rusconfig/RusBaseTxtConfigManager$ItemArray;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/rusconfig/RusBaseTxtConfigManager$RusTxtConfig;->itemArrays:Ljava/util/List;

    return-object p0
.end method

.method public final copy(Ljava/util/List;)Lcom/android/rusconfig/RusBaseTxtConfigManager$RusTxtConfig;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/rusconfig/RusBaseTxtConfigManager$ItemArray;",
            ">;)",
            "Lcom/android/rusconfig/RusBaseTxtConfigManager$RusTxtConfig;"
        }
    .end annotation

    const-string p0, "itemArrays"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/android/rusconfig/RusBaseTxtConfigManager$RusTxtConfig;

    invoke-direct {p0, p1}, Lcom/android/rusconfig/RusBaseTxtConfigManager$RusTxtConfig;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/android/rusconfig/RusBaseTxtConfigManager$RusTxtConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/android/rusconfig/RusBaseTxtConfigManager$RusTxtConfig;

    iget-object p0, p0, Lcom/android/rusconfig/RusBaseTxtConfigManager$RusTxtConfig;->itemArrays:Ljava/util/List;

    iget-object p1, p1, Lcom/android/rusconfig/RusBaseTxtConfigManager$RusTxtConfig;->itemArrays:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public final getItemArrays()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/rusconfig/RusBaseTxtConfigManager$ItemArray;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/rusconfig/RusBaseTxtConfigManager$RusTxtConfig;->itemArrays:Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    iget-object p0, p0, Lcom/android/rusconfig/RusBaseTxtConfigManager$RusTxtConfig;->itemArrays:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "RusTxtConfig{itemArrays:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/rusconfig/RusBaseTxtConfigManager$RusTxtConfig;->itemArrays:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/rusconfig/RusBaseTxtConfigManager$ItemArray;

    invoke-interface {p0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "toString(this)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
