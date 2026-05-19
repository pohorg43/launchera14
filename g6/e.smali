.class public final Lg6/e;
.super Le6/a;
.source ""


# static fields
.field public static final g:Lg6/e;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final h:Lg6/e;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# instance fields
.field public final f:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    new-instance v0, Lg6/e;

    const/4 v1, 0x3

    new-array v2, v1, [I

    fill-array-data v2, :array_40

    invoke-direct {v0, v2}, Lg6/e;-><init>([I)V

    sput-object v0, Lg6/e;->g:Lg6/e;

    iget v2, v0, Le6/a;->b:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_24

    iget v5, v0, Le6/a;->c:I

    const/16 v6, 0x9

    if-ne v5, v6, :cond_24

    new-instance v0, Lg6/e;

    new-array v1, v1, [I

    fill-array-data v1, :array_4a

    invoke-direct {v0, v1}, Lg6/e;-><init>([I)V

    goto :goto_36

    :cond_24
    new-instance v5, Lg6/e;

    new-array v1, v1, [I

    aput v2, v1, v4

    iget v0, v0, Le6/a;->c:I

    add-int/2addr v0, v3

    aput v0, v1, v3

    const/4 v0, 0x2

    aput v4, v1, v0

    invoke-direct {v5, v1}, Lg6/e;-><init>([I)V

    move-object v0, v5

    :goto_36
    sput-object v0, Lg6/e;->h:Lg6/e;

    new-instance v0, Lg6/e;

    new-array v1, v4, [I

    invoke-direct {v0, v1}, Lg6/e;-><init>([I)V

    return-void

    :array_40
    .array-data 4
        0x1
        0x8
        0x0
    .end array-data

    :array_4a
    .array-data 4
        0x2
        0x0
        0x0
    .end array-data
.end method

.method public varargs constructor <init>([I)V
    .registers 3

    const-string v0, "numbers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lg6/e;-><init>([IZ)V

    return-void
.end method

.method public constructor <init>([IZ)V
    .registers 4

    const-string v0, "versionArray"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    invoke-direct {p0, p1}, Le6/a;-><init>([I)V

    iput-boolean p2, p0, Lg6/e;->f:Z

    return-void
.end method


# virtual methods
.method public final b(Lg6/e;)Z
    .registers 6

    const-string v0, "metadataVersionFromLanguageVersion"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Le6/a;->b:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1c

    iget v0, p0, Le6/a;->c:I

    if-nez v0, :cond_1c

    sget-object v0, Lg6/e;->g:Lg6/e;

    iget v2, v0, Le6/a;->b:I

    if-ne v2, v1, :cond_1c

    iget v0, v0, Le6/a;->c:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1c

    return v1

    :cond_1c
    iget-boolean v0, p0, Lg6/e;->f:Z

    if-eqz v0, :cond_23

    sget-object v0, Lg6/e;->g:Lg6/e;

    goto :goto_25

    :cond_23
    sget-object v0, Lg6/e;->h:Lg6/e;

    :goto_25
    invoke-virtual {v0, p1}, Lg6/e;->c(Lg6/e;)Z

    move-result v2

    if-eqz v2, :cond_2c

    move-object p1, v0

    :cond_2c
    iget v0, p0, Le6/a;->b:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_36

    iget v3, p0, Le6/a;->c:I

    if-nez v3, :cond_36

    goto :goto_3f

    :cond_36
    if-nez v0, :cond_39

    goto :goto_3f

    :cond_39
    invoke-virtual {p0, p1}, Lg6/e;->c(Lg6/e;)Z

    move-result p0

    xor-int/lit8 v2, p0, 0x1

    :goto_3f
    return v2
.end method

.method public final c(Lg6/e;)Z
    .registers 6

    iget v0, p0, Le6/a;->b:I

    iget v1, p1, Le6/a;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v0, v1, :cond_a

    :goto_8
    move v2, v3

    goto :goto_14

    :cond_a
    if-ge v0, v1, :cond_d

    goto :goto_14

    :cond_d
    iget p0, p0, Le6/a;->c:I

    iget p1, p1, Le6/a;->c:I

    if-le p0, p1, :cond_14

    goto :goto_8

    :cond_14
    :goto_14
    return v2
.end method
