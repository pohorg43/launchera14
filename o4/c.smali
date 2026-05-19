.class public final Lo4/c;
.super Li4/c;
.source ""

# interfaces
.implements Lo4/a;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Enum<",
        "TT;>;>",
        "Li4/c<",
        "TT;>;",
        "Lo4/a<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public final a:[Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/Enum;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    const-string v0, "entries"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Li4/c;-><init>()V

    iput-object p1, p0, Lo4/c;->a:[Ljava/lang/Enum;

    return-void
.end method

.method private final writeReplace()Ljava/lang/Object;
    .registers 2

    new-instance v0, Lo4/d;

    iget-object p0, p0, Lo4/c;->a:[Ljava/lang/Enum;

    invoke-direct {v0, p0}, Lo4/d;-><init>([Ljava/lang/Enum;)V

    return-object v0
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Ljava/lang/Enum;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Ljava/lang/Enum;

    const-string v0, "element"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lo4/c;->a:[Ljava/lang/Enum;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-static {p0, v0}, Li4/k;->C([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Enum;

    if-ne p0, p1, :cond_1c

    const/4 v1, 0x1

    :cond_1c
    return v1
.end method

.method public get(I)Ljava/lang/Object;
    .registers 4

    sget-object v0, Li4/c;->Companion:Li4/c$a;

    iget-object v1, p0, Lo4/c;->a:[Ljava/lang/Enum;

    array-length v1, v1

    invoke-virtual {v0, p1, v1}, Li4/c$a;->a(II)V

    iget-object p0, p0, Lo4/c;->a:[Ljava/lang/Enum;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getSize()I
    .registers 1

    iget-object p0, p0, Lo4/c;->a:[Ljava/lang/Enum;

    array-length p0, p0

    return p0
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .registers 4

    instance-of v0, p1, Ljava/lang/Enum;

    const/4 v1, -0x1

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Ljava/lang/Enum;

    const-string v0, "element"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object p0, p0, Lo4/c;->a:[Ljava/lang/Enum;

    invoke-static {p0, v0}, Li4/k;->C([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Enum;

    if-ne p0, p1, :cond_1c

    move v1, v0

    :cond_1c
    return v1
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .registers 3

    instance-of v0, p1, Ljava/lang/Enum;

    if-nez v0, :cond_6

    const/4 p0, -0x1

    return p0

    :cond_6
    check-cast p1, Ljava/lang/Enum;

    const-string v0, "element"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lo4/c;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
