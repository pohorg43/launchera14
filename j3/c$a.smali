.class public final Lj3/c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lp7/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj3/c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lp7/e;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lj3/a;


# direct methods
.method public constructor <init>(Lj3/a;)V
    .registers 2

    iput-object p1, p0, Lj3/c$a;->a:Lj3/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public emit(Ljava/lang/Object;Ll4/d;)Ljava/lang/Object;
    .registers 10

    check-cast p1, Ljava/util/List;

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_7

    goto :goto_5d

    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "isTooManyUpk, upkEntities size: "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UpkUtils"

    invoke-static {v2, v1}, Lf3/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v3, 0x1e

    if-lt v1, v3, :cond_23

    goto :goto_5b

    :cond_23
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Le3/a;->c:Le3/a$a;

    invoke-virtual {v4}, Le3/a$a;->a()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "/upk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lk3/f;->a(Ljava/io/File;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v5, "isTooManyUpk, dir size: "

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lf3/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v1, 0x9600000

    int-to-long v1, v1

    cmp-long v1, v3, v1

    if-ltz v1, :cond_5d

    :goto_5b
    move v1, v0

    goto :goto_5e

    :cond_5d
    :goto_5d
    move v1, p2

    :goto_5e
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "database changed, isTooManyUpk: "

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UpkDaoRoomImpl"

    invoke-static {v3, v2}, Lf3/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_152

    iget-object v1, p0, Lj3/c$a;->a:Lj3/a;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez p1, :cond_79

    move-object p1, v1

    goto :goto_82

    :cond_79
    new-instance v2, Lj3/b;

    invoke-direct {v2}, Lj3/b;-><init>()V

    invoke-static {p1, v2}, Li4/v;->b0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    :goto_82
    if-eqz p1, :cond_92

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v0, v2

    if-eqz v0, :cond_92

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li3/a;

    goto :goto_93

    :cond_92
    move-object p1, v1

    :goto_93
    if-nez p1, :cond_97

    goto/16 :goto_152

    :cond_97
    iget-object p0, p0, Lj3/c$a;->a:Lj3/a;

    sget-object v0, Le3/a;->c:Le3/a$a;

    invoke-virtual {v0}, Le3/a$a;->a()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p1, Li3/a;->b:Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_ad

    const-string p0, "deleteUpk, serviceId is null, return"

    invoke-static {v3, p0}, Lf3/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_152

    :cond_ad
    const-string v2, "deleteUpk, serviceId: "

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lf3/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "content"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "digest exception:"

    const-string v3, "sha256"

    :try_start_bf
    const-string v4, "SHA-256"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    sget-object v5, Lk7/b;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    const-string v6, "this as java.lang.String).getBytes(charset)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1
    :try_end_d4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_bf .. :try_end_d4} :catch_e2
    .catch Ljava/lang/IllegalStateException; {:try_start_bf .. :try_end_d4} :catch_d5

    goto :goto_ee

    :catch_d5
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lf3/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ee

    :catch_e2
    move-exception v4

    invoke-virtual {v4}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lf3/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_ee
    if-nez v1, :cond_f1

    goto :goto_127

    :cond_f1
    const-string v2, "bytes"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v2, v1

    :goto_ff
    if-ge p2, v2, :cond_11c

    aget-byte v4, v1, p2

    and-int/lit16 v5, v4, 0xf0

    ushr-int/lit8 v5, v5, 0x4

    and-int/lit8 v4, v4, 0xf

    const-string v6, "0123456789abcdef"

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    goto :goto_ff

    :cond_11c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "StringBuilder(capacity).…builderAction).toString()"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_129

    :goto_127
    const-string p2, ""

    :cond_129
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "/upk/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lk3/f;->b(Ljava/io/File;)V

    iget-object p0, p0, Lj3/a;->a:Lh3/a;

    invoke-interface {p0, p1}, Lh3/a;->b(Ljava/lang/String;)I

    :cond_152
    :goto_152
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
