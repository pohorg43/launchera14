.class public final Ld6/a;
.super Le6/a;
.source ""


# static fields
.field public static final f:Ld6/a;

.field public static final g:Ld6/a;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Ld6/a;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_16

    invoke-direct {v0, v1}, Ld6/a;-><init>([I)V

    sput-object v0, Ld6/a;->g:Ld6/a;

    new-instance v0, Ld6/a;

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-direct {v0, v1}, Ld6/a;-><init>([I)V

    return-void

    :array_16
    .array-data 4
        0x1
        0x0
        0x7
    .end array-data
.end method

.method public varargs constructor <init>([I)V
    .registers 3

    const-string v0, "numbers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    invoke-direct {p0, p1}, Le6/a;-><init>([I)V

    return-void
.end method

.method public static final b(Ljava/io/InputStream;)Ld6/a;
    .registers 4

    const-string v0, "stream"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance p0, Ly4/d;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v2, v1}, Ly4/d;-><init>(II)V

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p0, v2}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_23
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    move-object v2, p0

    check-cast v2, Li4/f0;

    invoke-virtual {v2}, Li4/f0;->nextInt()I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_3b
    invoke-static {v1}, Li4/v;->g0(Ljava/util/Collection;)[I

    move-result-object p0

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    new-instance v0, Ld6/a;

    invoke-direct {v0, p0}, Ld6/a;-><init>([I)V

    return-object v0
.end method
