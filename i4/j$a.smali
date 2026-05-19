.class public final Li4/j$a;
.super Li4/c;
.source ""

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li4/j;->e([I)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li4/c<",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field public final synthetic a:[I


# direct methods
.method public constructor <init>([I)V
    .registers 2

    iput-object p1, p0, Li4/j$a;->a:[I

    invoke-direct {p0}, Li4/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object p0, p0, Li4/j$a;->a:[I

    invoke-static {p0, p1}, Li4/k;->q([II)Z

    move-result p0

    return p0
.end method

.method public get(I)Ljava/lang/Object;
    .registers 2

    iget-object p0, p0, Li4/j$a;->a:[I

    aget p0, p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getSize()I
    .registers 1

    iget-object p0, p0, Li4/j$a;->a:[I

    array-length p0, p0

    return p0
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .registers 3

    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_6

    const/4 p0, -0x1

    return p0

    :cond_6
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object p0, p0, Li4/j$a;->a:[I

    invoke-static {p0, p1}, Li4/k;->D([II)I

    move-result p0

    return p0
.end method

.method public isEmpty()Z
    .registers 1

    iget-object p0, p0, Li4/j$a;->a:[I

    array-length p0, p0

    if-nez p0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .registers 6

    instance-of v0, p1, Ljava/lang/Integer;

    const/4 v1, -0x1

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object p0, p0, Li4/j$a;->a:[I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p0

    add-int/2addr v0, v1

    if-ltz v0, :cond_24

    :goto_17
    add-int/lit8 v2, v0, -0x1

    aget v3, p0, v0

    if-ne p1, v3, :cond_1f

    move v1, v0

    goto :goto_24

    :cond_1f
    if-gez v2, :cond_22

    goto :goto_24

    :cond_22
    move v0, v2

    goto :goto_17

    :cond_24
    :goto_24
    return v1
.end method
