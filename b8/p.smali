.class public final Lb8/p;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 8

    const/16 v0, 0x80

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_5
    const/16 v2, 0x1f

    if-gt v1, v2, :cond_3e

    shr-int/lit8 v2, v1, 0xc

    invoke-static {v2}, Lb8/p;->d(I)C

    move-result v2

    shr-int/lit8 v3, v1, 0x8

    invoke-static {v3}, Lb8/p;->d(I)C

    move-result v3

    shr-int/lit8 v4, v1, 0x4

    invoke-static {v4}, Lb8/p;->d(I)C

    move-result v4

    invoke-static {v1}, Lb8/p;->d(I)C

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\\u"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_3e
    const/16 v1, 0x22

    const-string v2, "\\\""

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "\\\\"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\\t"

    aput-object v2, v0, v1

    const-string v1, "\\b"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const/16 v1, 0xa

    const-string v2, "\\n"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\\r"

    aput-object v2, v0, v1

    const-string v1, "\\f"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sput-object v0, Lb8/p;->a:[Ljava/lang/String;

    return-void
.end method

.method public static final a(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 9

    const-string v0, "$this$printQuoted"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_15
    if-ge v2, v1, :cond_30

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sget-object v5, Lb8/p;->a:[Ljava/lang/String;

    array-length v6, v5

    if-lt v4, v6, :cond_21

    goto :goto_2d

    :cond_21
    aget-object v4, v5, v4

    if-eqz v4, :cond_2d

    invoke-virtual {p0, p1, v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v2, 0x1

    :cond_2d
    :goto_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_30
    invoke-virtual {p0, p1, v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static final b(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "$this$toBooleanStrict"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lb8/p;->c(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, " does not represent a Boolean"

    invoke-static {p0, v1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final c(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 3

    const-string v0, "$this$toBooleanStrictOrNull"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "true"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lk7/m;->k(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1d

    :cond_11
    const-string v0, "false"

    invoke-static {p0, v0, v1}, Lk7/m;->k(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1c

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    return-object p0
.end method

.method public static final d(I)C
    .registers 2

    and-int/lit8 p0, p0, 0xf

    const/16 v0, 0xa

    if-ge p0, v0, :cond_9

    add-int/lit8 p0, p0, 0x30

    goto :goto_c

    :cond_9
    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x61

    :goto_c
    int-to-char p0, p0

    return p0
.end method
