.class public final Lf7/d;
.super Lf7/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lf7/c<",
        "TT;>;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nArrayMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ArrayMap.kt\norg/jetbrains/kotlin/util/ArrayMapImpl\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,142:1\n11515#2,11:143\n13644#2,2:154\n13646#2:157\n11526#2:158\n1#3:156\n*S KotlinDebug\n*F\n+ 1 ArrayMap.kt\norg/jetbrains/kotlin/util/ArrayMapImpl\n*L\n137#1:143,11\n137#1:154,2\n137#1:157\n137#1:158\n137#1:156\n*E\n"
    }
.end annotation


# instance fields
.field public a:[Ljava/lang/Object;

.field public b:I


# direct methods
.method public constructor <init>()V
    .registers 3

    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lf7/c;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lf7/d;->a:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lf7/d;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 1

    iget p0, p0, Lf7/d;->b:I

    return p0
.end method

.method public d(ILjava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lf7/d;->a:[Ljava/lang/Object;

    array-length v1, v0

    if-gt v1, p1, :cond_18

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "copyOf(this, newSize)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lf7/d;->a:[Ljava/lang/Object;

    :cond_18
    iget-object v0, p0, Lf7/d;->a:[Ljava/lang/Object;

    aget-object v1, v0, p1

    if-nez v1, :cond_24

    iget v1, p0, Lf7/d;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lf7/d;->b:I

    :cond_24
    aput-object p2, v0, p1

    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object p0, p0, Lf7/d;->a:[Ljava/lang/Object;

    invoke-static {p0, p1}, Li4/k;->C([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lf7/d$a;

    invoke-direct {v0, p0}, Lf7/d$a;-><init>(Lf7/d;)V

    return-object v0
.end method
