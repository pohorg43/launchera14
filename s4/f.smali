.class public Ls4/f;
.super Ls4/e;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Utils.kt\nkotlin/io/FilesKt__UtilsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,473:1\n1#2:474\n1284#3,3:475\n*S KotlinDebug\n*F\n+ 1 Utils.kt\nkotlin/io/FilesKt__UtilsKt\n*L\n347#1:475,3\n*E\n"
    }
.end annotation


# direct methods
.method public static final b(Ljava/io/File;)Z
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ls4/d;->b:Ls4/d;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direction"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ls4/c;

    invoke-direct {v0, p0, v1}, Ls4/c;-><init>(Ljava/io/File;Ls4/d;)V

    invoke-interface {v0}, Lj7/h;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x1

    :goto_1c
    move v1, v0

    :goto_1d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_35

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_38

    :cond_35
    if-eqz v1, :cond_38

    goto :goto_1c

    :cond_38
    const/4 v1, 0x0

    goto :goto_1d

    :cond_3a
    return v1
.end method

.method public static final c(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 9

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "relative"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-char v0, Ljava/io/File;->separatorChar:C

    const/4 v1, 0x4

    const/4 v3, 0x0

    invoke-static {p1, v0, v3, v3, v1}, Lk7/q;->B(Ljava/lang/CharSequence;CIZI)I

    move-result v0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez v0, :cond_52

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v5, :cond_50

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sget-char v6, Ljava/io/File;->separatorChar:C

    if-ne v0, v6, :cond_50

    invoke-static {p1, v6, v4, v3, v1}, Lk7/q;->B(Ljava/lang/CharSequence;CIZI)I

    move-result v0

    if-ltz v0, :cond_50

    sget-char v6, Ljava/io/File;->separatorChar:C

    add-int/2addr v0, v5

    invoke-static {p1, v6, v0, v3, v1}, Lk7/q;->B(Ljava/lang/CharSequence;CIZI)I

    move-result v0

    if-ltz v0, :cond_4b

    goto :goto_5e

    :cond_4b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    goto :goto_70

    :cond_50
    move p1, v5

    goto :goto_70

    :cond_52
    const/16 v1, 0x3a

    if-lez v0, :cond_61

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v1, :cond_61

    :goto_5e
    add-int/lit8 p1, v0, 0x1

    goto :goto_70

    :cond_61
    const/4 v6, -0x1

    if-ne v0, v6, :cond_6f

    invoke-static {p1, v1, v3, v4}, Lk7/q;->w(Ljava/lang/CharSequence;CZI)Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    goto :goto_70

    :cond_6f
    move p1, v3

    :goto_70
    if-lez p1, :cond_74

    move p1, v5

    goto :goto_75

    :cond_74
    move p1, v3

    :goto_75
    if-eqz p1, :cond_78

    goto :goto_bf

    :cond_78
    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "this.toString()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_88

    goto :goto_89

    :cond_88
    move v5, v3

    :goto_89
    if-nez v5, :cond_aa

    sget-char p1, Ljava/io/File;->separatorChar:C

    invoke-static {p0, p1, v3, v4}, Lk7/q;->w(Ljava/lang/CharSequence;CZI)Z

    move-result p1

    if-eqz p1, :cond_94

    goto :goto_aa

    :cond_94
    new-instance p1, Ljava/io/File;

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_be

    :cond_aa
    :goto_aa
    new-instance p1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_be
    move-object v2, p1

    :goto_bf
    return-object v2
.end method
