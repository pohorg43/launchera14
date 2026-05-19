.class public final Lokio/internal/-Path;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/JvmName;
    name = "-Path"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPath.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Path.kt\nokio/internal/-Path\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,406:1\n59#1,22:407\n209#1:433\n209#1:434\n1549#2:429\n1620#2,3:430\n*S KotlinDebug\n*F\n+ 1 Path.kt\nokio/internal/-Path\n*L\n53#1:407,22\n199#1:433\n204#1:434\n53#1:429\n53#1:430,3\n*E\n"
    }
.end annotation


# static fields
.field private static final ANY_SLASH:Lokio/ByteString;

.field private static final BACKSLASH:Lokio/ByteString;

.field private static final DOT:Lokio/ByteString;

.field private static final DOT_DOT:Lokio/ByteString;

.field private static final SLASH:Lokio/ByteString;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    sget-object v0, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    sput-object v1, Lokio/internal/-Path;->SLASH:Lokio/ByteString;

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    sput-object v1, Lokio/internal/-Path;->BACKSLASH:Lokio/ByteString;

    const-string v1, "/\\"

    invoke-virtual {v0, v1}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    sput-object v1, Lokio/internal/-Path;->ANY_SLASH:Lokio/ByteString;

    const-string v1, "."

    invoke-virtual {v0, v1}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    sput-object v1, Lokio/internal/-Path;->DOT:Lokio/ByteString;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokio/internal/-Path;->DOT_DOT:Lokio/ByteString;

    return-void
.end method

.method public static final synthetic access$getBACKSLASH$p()Lokio/ByteString;
    .registers 1

    sget-object v0, Lokio/internal/-Path;->BACKSLASH:Lokio/ByteString;

    return-object v0
.end method

.method public static final synthetic access$getDOT$p()Lokio/ByteString;
    .registers 1

    sget-object v0, Lokio/internal/-Path;->DOT:Lokio/ByteString;

    return-object v0
.end method

.method public static final synthetic access$getDOT_DOT$p()Lokio/ByteString;
    .registers 1

    sget-object v0, Lokio/internal/-Path;->DOT_DOT:Lokio/ByteString;

    return-object v0
.end method

.method public static final synthetic access$getIndexOfLastSlash(Lokio/Path;)I
    .registers 1

    invoke-static {p0}, Lokio/internal/-Path;->getIndexOfLastSlash(Lokio/Path;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getSLASH$p()Lokio/ByteString;
    .registers 1

    sget-object v0, Lokio/internal/-Path;->SLASH:Lokio/ByteString;

    return-object v0
.end method

.method public static final synthetic access$getSlash(Lokio/Path;)Lokio/ByteString;
    .registers 1

    invoke-static {p0}, Lokio/internal/-Path;->getSlash(Lokio/Path;)Lokio/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$lastSegmentIsDotDot(Lokio/Path;)Z
    .registers 1

    invoke-static {p0}, Lokio/internal/-Path;->lastSegmentIsDotDot(Lokio/Path;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$rootLength(Lokio/Path;)I
    .registers 1

    invoke-static {p0}, Lokio/internal/-Path;->rootLength(Lokio/Path;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$toSlash(Ljava/lang/String;)Lokio/ByteString;
    .registers 1

    invoke-static {p0}, Lokio/internal/-Path;->toSlash(Ljava/lang/String;)Lokio/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public static final commonCompareTo(Lokio/Path;Lokio/Path;)I
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p1}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object p1

    invoke-virtual {p0, p1}, Lokio/ByteString;->compareTo(Lokio/ByteString;)I

    move-result p0

    return p0
.end method

.method public static final commonEquals(Lokio/Path;Ljava/lang/Object;)Z
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lokio/Path;

    if-eqz v0, :cond_1b

    check-cast p1, Lokio/Path;

    invoke-virtual {p1}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object p1

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    const/4 p0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    :goto_1c
    return p0
.end method

.method public static final commonHashCode(Lokio/Path;)I
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lokio/ByteString;->hashCode()I

    move-result p0

    return p0
.end method

.method public static final commonIsAbsolute(Lokio/Path;)Z
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lokio/internal/-Path;->access$rootLength(Lokio/Path;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static final commonIsRelative(Lokio/Path;)Z
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lokio/internal/-Path;->access$rootLength(Lokio/Path;)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static final commonIsRoot(Lokio/Path;)Z
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lokio/internal/-Path;->access$rootLength(Lokio/Path;)I

    move-result v0

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result p0

    if-ne v0, p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return p0
.end method

.method public static final commonName(Lokio/Path;)Ljava/lang/String;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/Path;->nameBytes()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final commonNameBytes(Lokio/Path;)Lokio/ByteString;
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lokio/internal/-Path;->access$getIndexOfLastSlash(Lokio/Path;)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1a

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object p0

    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v0, v2, v1, v3}, Lokio/ByteString;->substring$default(Lokio/ByteString;IIILjava/lang/Object;)Lokio/ByteString;

    move-result-object p0

    goto :goto_31

    :cond_1a
    invoke-virtual {p0}, Lokio/Path;->volumeLetter()Ljava/lang/Character;

    move-result-object v0

    if-eqz v0, :cond_2d

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    if-ne v0, v1, :cond_2d

    sget-object p0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    goto :goto_31

    :cond_2d
    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object p0

    :goto_31
    return-object p0
.end method

.method public static final commonNormalized(Lokio/Path;)Lokio/Path;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lokio/Path;->Companion:Lokio/Path$Companion;

    invoke-virtual {p0}, Lokio/Path;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lokio/Path$Companion;->get(Ljava/lang/String;Z)Lokio/Path;

    move-result-object p0

    return-object p0
.end method

.method public static final commonParent(Lokio/Path;)Lokio/Path;
    .registers 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v0

    invoke-static {}, Lokio/internal/-Path;->access$getDOT$p()Lokio/ByteString;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_be

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v0

    invoke-static {}, Lokio/internal/-Path;->access$getSLASH$p()Lokio/ByteString;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_be

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v0

    invoke-static {}, Lokio/internal/-Path;->access$getBACKSLASH$p()Lokio/ByteString;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_be

    invoke-static {p0}, Lokio/internal/-Path;->access$lastSegmentIsDotDot(Lokio/Path;)Z

    move-result v0

    if-eqz v0, :cond_38

    goto/16 :goto_be

    :cond_38
    invoke-static {p0}, Lokio/internal/-Path;->access$getIndexOfLastSlash(Lokio/Path;)I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v2, :cond_61

    invoke-virtual {p0}, Lokio/Path;->volumeLetter()Ljava/lang/Character;

    move-result-object v5

    if-eqz v5, :cond_61

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_53

    return-object v1

    :cond_53
    new-instance v0, Lokio/Path;

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object p0

    invoke-static {p0, v3, v2, v4, v1}, Lokio/ByteString;->substring$default(Lokio/ByteString;IIILjava/lang/Object;)Lokio/ByteString;

    move-result-object p0

    invoke-direct {v0, p0}, Lokio/Path;-><init>(Lokio/ByteString;)V

    return-object v0

    :cond_61
    if-ne v0, v4, :cond_72

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v5

    invoke-static {}, Lokio/internal/-Path;->access$getBACKSLASH$p()Lokio/ByteString;

    move-result-object v6

    invoke-virtual {v5, v6}, Lokio/ByteString;->startsWith(Lokio/ByteString;)Z

    move-result v5

    if-eqz v5, :cond_72

    return-object v1

    :cond_72
    const/4 v5, -0x1

    if-ne v0, v5, :cond_94

    invoke-virtual {p0}, Lokio/Path;->volumeLetter()Ljava/lang/Character;

    move-result-object v6

    if-eqz v6, :cond_94

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    if-ne v0, v2, :cond_86

    return-object v1

    :cond_86
    new-instance v0, Lokio/Path;

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object p0

    invoke-static {p0, v3, v2, v4, v1}, Lokio/ByteString;->substring$default(Lokio/ByteString;IIILjava/lang/Object;)Lokio/ByteString;

    move-result-object p0

    invoke-direct {v0, p0}, Lokio/Path;-><init>(Lokio/ByteString;)V

    return-object v0

    :cond_94
    if-ne v0, v5, :cond_a0

    new-instance p0, Lokio/Path;

    invoke-static {}, Lokio/internal/-Path;->access$getDOT$p()Lokio/ByteString;

    move-result-object v0

    invoke-direct {p0, v0}, Lokio/Path;-><init>(Lokio/ByteString;)V

    return-object p0

    :cond_a0
    if-nez v0, :cond_b0

    new-instance v0, Lokio/Path;

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object p0

    invoke-static {p0, v3, v4, v4, v1}, Lokio/ByteString;->substring$default(Lokio/ByteString;IIILjava/lang/Object;)Lokio/ByteString;

    move-result-object p0

    invoke-direct {v0, p0}, Lokio/Path;-><init>(Lokio/ByteString;)V

    return-object v0

    :cond_b0
    new-instance v2, Lokio/Path;

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object p0

    invoke-static {p0, v3, v0, v4, v1}, Lokio/ByteString;->substring$default(Lokio/ByteString;IIILjava/lang/Object;)Lokio/ByteString;

    move-result-object p0

    invoke-direct {v2, p0}, Lokio/Path;-><init>(Lokio/ByteString;)V

    return-object v2

    :cond_be
    :goto_be
    return-object v1
.end method

.method public static final commonRelativeTo(Lokio/Path;Lokio/Path;)Lokio/Path;
    .registers 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/Path;->getRoot()Lokio/Path;

    move-result-object v0

    invoke-virtual {p1}, Lokio/Path;->getRoot()Lokio/Path;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, " and "

    if-eqz v0, :cond_df

    invoke-virtual {p0}, Lokio/Path;->getSegmentsBytes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lokio/Path;->getSegmentsBytes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_30
    if-ge v5, v3, :cond_43

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_43

    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    :cond_43
    const/4 v6, 0x1

    if-ne v5, v3, :cond_62

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v3

    invoke-virtual {p1}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v7

    invoke-virtual {v7}, Lokio/ByteString;->size()I

    move-result v7

    if-ne v3, v7, :cond_62

    sget-object p0, Lokio/Path;->Companion:Lokio/Path$Companion;

    const/4 p1, 0x0

    const-string v0, "."

    invoke-static {p0, v0, v4, v6, p1}, Lokio/Path$Companion;->get$default(Lokio/Path$Companion;Ljava/lang/String;ZILjava/lang/Object;)Lokio/Path;

    move-result-object p0

    return-object p0

    :cond_62
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2, v5, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-static {}, Lokio/internal/-Path;->access$getDOT_DOT$p()Lokio/ByteString;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v7, -0x1

    if-ne v3, v7, :cond_76

    goto :goto_77

    :cond_76
    move v6, v4

    :goto_77
    if-eqz v6, :cond_be

    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    invoke-static {p1}, Lokio/internal/-Path;->access$getSlash(Lokio/Path;)Lokio/ByteString;

    move-result-object p1

    if-nez p1, :cond_90

    invoke-static {p0}, Lokio/internal/-Path;->access$getSlash(Lokio/Path;)Lokio/ByteString;

    move-result-object p1

    if-nez p1, :cond_90

    sget-object p0, Lokio/Path;->DIRECTORY_SEPARATOR:Ljava/lang/String;

    invoke-static {p0}, Lokio/internal/-Path;->access$toSlash(Ljava/lang/String;)Lokio/ByteString;

    move-result-object p1

    :cond_90
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    move v2, v5

    :goto_95
    if-ge v2, p0, :cond_a4

    invoke-static {}, Lokio/internal/-Path;->access$getDOT_DOT$p()Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    invoke-virtual {v1, p1}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_95

    :cond_a4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    :goto_a8
    if-ge v5, p0, :cond_b9

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokio/ByteString;

    invoke-virtual {v1, v2}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    invoke-virtual {v1, p1}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_a8

    :cond_b9
    invoke-static {v1, v4}, Lokio/internal/-Path;->toPath(Lokio/Buffer;Z)Lokio/Path;

    move-result-object p0

    return-object p0

    :cond_be
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Impossible relative path to resolve: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_df
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Paths of different roots cannot be relative to each other: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final commonResolve(Lokio/Path;Ljava/lang/String;Z)Lokio/Path;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    invoke-virtual {v0, p1}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lokio/internal/-Path;->toPath(Lokio/Buffer;Z)Lokio/Path;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lokio/internal/-Path;->commonResolve(Lokio/Path;Lokio/Path;Z)Lokio/Path;

    move-result-object p0

    return-object p0
.end method

.method public static final commonResolve(Lokio/Path;Lokio/Buffer;Z)Lokio/Path;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lokio/internal/-Path;->toPath(Lokio/Buffer;Z)Lokio/Path;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lokio/internal/-Path;->commonResolve(Lokio/Path;Lokio/Path;Z)Lokio/Path;

    move-result-object p0

    return-object p0
.end method

.method public static final commonResolve(Lokio/Path;Lokio/ByteString;Z)Lokio/Path;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    invoke-virtual {v0, p1}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lokio/internal/-Path;->toPath(Lokio/Buffer;Z)Lokio/Path;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lokio/internal/-Path;->commonResolve(Lokio/Path;Lokio/Path;Z)Lokio/Path;

    move-result-object p0

    return-object p0
.end method

.method public static final commonResolve(Lokio/Path;Lokio/Path;Z)Lokio/Path;
    .registers 9

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lokio/Path;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_4e

    invoke-virtual {p1}, Lokio/Path;->volumeLetter()Ljava/lang/Character;

    move-result-object v0

    if-eqz v0, :cond_17

    goto :goto_4e

    :cond_17
    invoke-static {p0}, Lokio/internal/-Path;->getSlash(Lokio/Path;)Lokio/ByteString;

    move-result-object v0

    if-nez v0, :cond_29

    invoke-static {p1}, Lokio/internal/-Path;->getSlash(Lokio/Path;)Lokio/ByteString;

    move-result-object v0

    if-nez v0, :cond_29

    sget-object v0, Lokio/Path;->DIRECTORY_SEPARATOR:Ljava/lang/String;

    invoke-static {v0}, Lokio/internal/-Path;->toSlash(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    :cond_29
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {v1, p0}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-lez p0, :cond_42

    invoke-virtual {v1, v0}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    :cond_42
    invoke-virtual {p1}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {v1, p0}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    invoke-static {v1, p2}, Lokio/internal/-Path;->toPath(Lokio/Buffer;Z)Lokio/Path;

    move-result-object p0

    return-object p0

    :cond_4e
    :goto_4e
    return-object p1
.end method

.method public static final commonRoot(Lokio/Path;)Lokio/Path;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lokio/internal/-Path;->access$rootLength(Lokio/Path;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    const/4 p0, 0x0

    goto :goto_1d

    :cond_e
    new-instance v1, Lokio/Path;

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Lokio/ByteString;->substring(II)Lokio/ByteString;

    move-result-object p0

    invoke-direct {v1, p0}, Lokio/Path;-><init>(Lokio/ByteString;)V

    move-object p0, v1

    :goto_1d
    return-object p0
.end method

.method public static final commonSegments(Lokio/Path;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Path;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lokio/internal/-Path;->access$rootLength(Lokio/Path;)I

    move-result v1

    const/16 v2, 0x5c

    const/4 v3, -0x1

    if-ne v1, v3, :cond_15

    const/4 v1, 0x0

    goto :goto_2b

    :cond_15
    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v3

    if-ge v1, v3, :cond_2b

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v3, v1}, Lokio/ByteString;->getByte(I)B

    move-result v3

    if-ne v3, v2, :cond_2b

    add-int/lit8 v1, v1, 0x1

    :cond_2b
    :goto_2b
    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v3

    move v4, v1

    :goto_34
    if-ge v1, v3, :cond_5c

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v5

    invoke-virtual {v5, v1}, Lokio/ByteString;->getByte(I)B

    move-result v5

    const/16 v6, 0x2f

    if-eq v5, v6, :cond_4c

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v5

    invoke-virtual {v5, v1}, Lokio/ByteString;->getByte(I)B

    move-result v5

    if-ne v5, v2, :cond_59

    :cond_4c
    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v5

    invoke-virtual {v5, v4, v1}, Lokio/ByteString;->substring(II)Lokio/ByteString;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v1, 0x1

    :cond_59
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    :cond_5c
    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->size()I

    move-result v1

    if-ge v4, v1, :cond_79

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result p0

    invoke-virtual {v1, v4, p0}, Lokio/ByteString;->substring(II)Lokio/ByteString;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_79
    new-instance p0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_88
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokio/ByteString;

    invoke-virtual {v1}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_88

    :cond_9c
    return-object p0
.end method

.method public static final commonSegmentsBytes(Lokio/Path;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Path;",
            ")",
            "Ljava/util/List<",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lokio/internal/-Path;->access$rootLength(Lokio/Path;)I

    move-result v1

    const/16 v2, 0x5c

    const/4 v3, -0x1

    if-ne v1, v3, :cond_15

    const/4 v1, 0x0

    goto :goto_2b

    :cond_15
    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v3

    if-ge v1, v3, :cond_2b

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v3, v1}, Lokio/ByteString;->getByte(I)B

    move-result v3

    if-ne v3, v2, :cond_2b

    add-int/lit8 v1, v1, 0x1

    :cond_2b
    :goto_2b
    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v3

    move v4, v1

    :goto_34
    if-ge v1, v3, :cond_5c

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v5

    invoke-virtual {v5, v1}, Lokio/ByteString;->getByte(I)B

    move-result v5

    const/16 v6, 0x2f

    if-eq v5, v6, :cond_4c

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v5

    invoke-virtual {v5, v1}, Lokio/ByteString;->getByte(I)B

    move-result v5

    if-ne v5, v2, :cond_59

    :cond_4c
    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v5

    invoke-virtual {v5, v4, v1}, Lokio/ByteString;->substring(II)Lokio/ByteString;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v1, 0x1

    :cond_59
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    :cond_5c
    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->size()I

    move-result v1

    if-ge v4, v1, :cond_79

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result p0

    invoke-virtual {v1, v4, p0}, Lokio/ByteString;->substring(II)Lokio/ByteString;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_79
    return-object v0
.end method

.method public static final commonToPath(Ljava/lang/String;Z)Lokio/Path;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    invoke-virtual {v0, p0}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object p0

    invoke-static {p0, p1}, Lokio/internal/-Path;->toPath(Lokio/Buffer;Z)Lokio/Path;

    move-result-object p0

    return-object p0
.end method

.method public static final commonToString(Lokio/Path;)Ljava/lang/String;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final commonVolumeLetter(Lokio/Path;)Ljava/lang/Character;
    .registers 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v0

    invoke-static {}, Lokio/internal/-Path;->access$getSLASH$p()Lokio/ByteString;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lokio/ByteString;->indexOf$default(Lokio/ByteString;Lokio/ByteString;IILjava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_18

    return-object v4

    :cond_18
    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    if-ge v0, v3, :cond_23

    return-object v4

    :cond_23
    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lokio/ByteString;->getByte(I)B

    move-result v0

    const/16 v3, 0x3a

    if-eq v0, v3, :cond_31

    return-object v4

    :cond_31
    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p0, v2}, Lokio/ByteString;->getByte(I)B

    move-result p0

    int-to-char p0, p0

    const/16 v0, 0x61

    if-gt v0, p0, :cond_44

    const/16 v0, 0x7b

    if-ge p0, v0, :cond_44

    move v0, v1

    goto :goto_45

    :cond_44
    move v0, v2

    :goto_45
    if-nez v0, :cond_53

    const/16 v0, 0x41

    if-gt v0, p0, :cond_50

    const/16 v0, 0x5b

    if-ge p0, v0, :cond_50

    move v2, v1

    :cond_50
    if-nez v2, :cond_53

    return-object v4

    :cond_53
    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic getANY_SLASH$annotations()V
    .registers 0

    return-void
.end method

.method private static synthetic getBACKSLASH$annotations()V
    .registers 0

    return-void
.end method

.method private static synthetic getDOT$annotations()V
    .registers 0

    return-void
.end method

.method private static synthetic getDOT_DOT$annotations()V
    .registers 0

    return-void
.end method

.method private static final getIndexOfLastSlash(Lokio/Path;)I
    .registers 6

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v0

    sget-object v1, Lokio/internal/-Path;->SLASH:Lokio/ByteString;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lokio/ByteString;->lastIndexOf$default(Lokio/ByteString;Lokio/ByteString;IILjava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_11

    return v0

    :cond_11
    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object p0

    sget-object v0, Lokio/internal/-Path;->BACKSLASH:Lokio/ByteString;

    invoke-static {p0, v0, v2, v3, v4}, Lokio/ByteString;->lastIndexOf$default(Lokio/ByteString;Lokio/ByteString;IILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private static synthetic getSLASH$annotations()V
    .registers 0

    return-void
.end method

.method private static final getSlash(Lokio/Path;)Lokio/ByteString;
    .registers 7

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v0

    sget-object v1, Lokio/internal/-Path;->SLASH:Lokio/ByteString;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lokio/ByteString;->indexOf$default(Lokio/ByteString;Lokio/ByteString;IILjava/lang/Object;)I

    move-result v0

    const/4 v5, -0x1

    if-eq v0, v5, :cond_11

    goto :goto_1f

    :cond_11
    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object p0

    sget-object v1, Lokio/internal/-Path;->BACKSLASH:Lokio/ByteString;

    invoke-static {p0, v1, v2, v3, v4}, Lokio/ByteString;->indexOf$default(Lokio/ByteString;Lokio/ByteString;IILjava/lang/Object;)I

    move-result p0

    if-eq p0, v5, :cond_1e

    goto :goto_1f

    :cond_1e
    move-object v1, v4

    :goto_1f
    return-object v1
.end method

.method private static final lastSegmentIsDotDot(Lokio/Path;)Z
    .registers 6

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v0

    sget-object v1, Lokio/internal/-Path;->DOT_DOT:Lokio/ByteString;

    invoke-virtual {v0, v1}, Lokio/ByteString;->endsWith(Lokio/ByteString;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_48

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1a

    return v3

    :cond_1a
    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lokio/ByteString;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    sget-object v4, Lokio/internal/-Path;->SLASH:Lokio/ByteString;

    invoke-virtual {v0, v2, v4, v1, v3}, Lokio/ByteString;->rangeEquals(ILokio/ByteString;II)Z

    move-result v0

    if-eqz v0, :cond_31

    return v3

    :cond_31
    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x3

    sget-object v2, Lokio/internal/-Path;->BACKSLASH:Lokio/ByteString;

    invoke-virtual {v0, p0, v2, v1, v3}, Lokio/ByteString;->rangeEquals(ILokio/ByteString;II)Z

    move-result p0

    if-eqz p0, :cond_48

    return v3

    :cond_48
    return v1
.end method

.method private static final rootLength(Lokio/Path;)I
    .registers 8

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_c

    return v1

    :cond_c
    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lokio/ByteString;->getByte(I)B

    move-result v0

    const/16 v3, 0x2f

    const/4 v4, 0x1

    if-ne v0, v3, :cond_1b

    return v4

    :cond_1b
    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0, v2}, Lokio/ByteString;->getByte(I)B

    move-result v0

    const/16 v3, 0x5c

    const/4 v5, 0x2

    if-ne v0, v3, :cond_52

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    if-le v0, v5, :cond_51

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0, v4}, Lokio/ByteString;->getByte(I)B

    move-result v0

    if-ne v0, v3, :cond_51

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v0

    sget-object v2, Lokio/internal/-Path;->BACKSLASH:Lokio/ByteString;

    invoke-virtual {v0, v2, v5}, Lokio/ByteString;->indexOf(Lokio/ByteString;I)I

    move-result v0

    if-ne v0, v1, :cond_50

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result v0

    :cond_50
    return v0

    :cond_51
    return v4

    :cond_52
    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    if-le v0, v5, :cond_96

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0, v4}, Lokio/ByteString;->getByte(I)B

    move-result v0

    const/16 v6, 0x3a

    if-ne v0, v6, :cond_96

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0, v5}, Lokio/ByteString;->getByte(I)B

    move-result v0

    if-ne v0, v3, :cond_96

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p0, v2}, Lokio/ByteString;->getByte(I)B

    move-result p0

    int-to-char p0, p0

    const/16 v0, 0x61

    if-gt v0, p0, :cond_85

    const/16 v0, 0x7b

    if-ge p0, v0, :cond_85

    move v0, v4

    goto :goto_86

    :cond_85
    move v0, v2

    :goto_86
    if-nez v0, :cond_94

    const/16 v0, 0x41

    if-gt v0, p0, :cond_91

    const/16 v0, 0x5b

    if-ge p0, v0, :cond_91

    move v2, v4

    :cond_91
    if-nez v2, :cond_94

    return v1

    :cond_94
    const/4 p0, 0x3

    return p0

    :cond_96
    return v1
.end method

.method private static final startsWithVolumeLetterAndColon(Lokio/Buffer;Lokio/ByteString;)Z
    .registers 7

    sget-object v0, Lokio/internal/-Path;->BACKSLASH:Lokio/ByteString;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_a

    return v0

    :cond_a
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x2

    cmp-long p1, v1, v3

    if-gez p1, :cond_15

    return v0

    :cond_15
    const-wide/16 v1, 0x1

    invoke-virtual {p0, v1, v2}, Lokio/Buffer;->getByte(J)B

    move-result p1

    const/16 v1, 0x3a

    if-eq p1, v1, :cond_20

    return v0

    :cond_20
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lokio/Buffer;->getByte(J)B

    move-result p0

    int-to-char p0, p0

    const/16 p1, 0x61

    const/4 v1, 0x1

    if-gt p1, p0, :cond_32

    const/16 p1, 0x7b

    if-ge p0, p1, :cond_32

    move p1, v1

    goto :goto_33

    :cond_32
    move p1, v0

    :goto_33
    if-nez p1, :cond_42

    const/16 p1, 0x41

    if-gt p1, p0, :cond_3f

    const/16 p1, 0x5b

    if-ge p0, p1, :cond_3f

    move p0, v1

    goto :goto_40

    :cond_3f
    move p0, v0

    :goto_40
    if-eqz p0, :cond_43

    :cond_42
    move v0, v1

    :cond_43
    return v0
.end method

.method public static final toPath(Lokio/Buffer;Z)Lokio/Path;
    .registers 18

    move-object/from16 v0, p0

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_e
    sget-object v6, Lokio/internal/-Path;->SLASH:Lokio/ByteString;

    const-wide/16 v7, 0x0

    invoke-virtual {v0, v7, v8, v6}, Lokio/Buffer;->rangeEquals(JLokio/ByteString;)Z

    move-result v6

    if-nez v6, :cond_12c

    sget-object v6, Lokio/internal/-Path;->BACKSLASH:Lokio/ByteString;

    invoke-virtual {v0, v7, v8, v6}, Lokio/Buffer;->rangeEquals(JLokio/ByteString;)Z

    move-result v9

    if-eqz v9, :cond_22

    goto/16 :goto_12c

    :cond_22
    const/4 v9, 0x2

    const/4 v10, 0x1

    if-lt v5, v9, :cond_2e

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2e

    move v6, v10

    goto :goto_2f

    :cond_2e
    const/4 v6, 0x0

    :goto_2f
    const-wide/16 v11, -0x1

    if-eqz v6, :cond_3d

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    invoke-virtual {v2, v4}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    goto :goto_7a

    :cond_3d
    if-lez v5, :cond_46

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    goto :goto_7a

    :cond_46
    sget-object v5, Lokio/internal/-Path;->ANY_SLASH:Lokio/ByteString;

    invoke-virtual {v0, v5}, Lokio/Buffer;->indexOfElement(Lokio/ByteString;)J

    move-result-wide v13

    if-nez v4, :cond_61

    cmp-long v4, v13, v11

    if-nez v4, :cond_59

    sget-object v4, Lokio/Path;->DIRECTORY_SEPARATOR:Ljava/lang/String;

    invoke-static {v4}, Lokio/internal/-Path;->toSlash(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v4

    goto :goto_61

    :cond_59
    invoke-virtual {v0, v13, v14}, Lokio/Buffer;->getByte(J)B

    move-result v4

    invoke-static {v4}, Lokio/internal/-Path;->toSlash(B)Lokio/ByteString;

    move-result-object v4

    :cond_61
    :goto_61
    invoke-static {v0, v4}, Lokio/internal/-Path;->startsWithVolumeLetterAndColon(Lokio/Buffer;Lokio/ByteString;)Z

    move-result v5

    if-eqz v5, :cond_78

    move-object v5, v4

    const-wide/16 v3, 0x2

    cmp-long v13, v13, v3

    if-nez v13, :cond_74

    const-wide/16 v3, 0x3

    invoke-virtual {v2, v0, v3, v4}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    goto :goto_79

    :cond_74
    invoke-virtual {v2, v0, v3, v4}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    goto :goto_79

    :cond_78
    move-object v5, v4

    :goto_79
    move-object v4, v5

    :goto_7a
    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v13

    cmp-long v3, v13, v7

    if-lez v3, :cond_84

    move v3, v10

    goto :goto_85

    :cond_84
    const/4 v3, 0x0

    :goto_85
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :cond_8a
    :goto_8a
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->exhausted()Z

    move-result v13

    if-nez v13, :cond_fd

    sget-object v13, Lokio/internal/-Path;->ANY_SLASH:Lokio/ByteString;

    invoke-virtual {v0, v13}, Lokio/Buffer;->indexOfElement(Lokio/ByteString;)J

    move-result-wide v13

    cmp-long v15, v13, v11

    if-nez v15, :cond_9f

    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v13

    goto :goto_a6

    :cond_9f
    invoke-virtual {v0, v13, v14}, Lokio/Buffer;->readByteString(J)Lokio/ByteString;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->readByte()B

    :goto_a6
    sget-object v14, Lokio/internal/-Path;->DOT_DOT:Lokio/ByteString;

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e9

    if-eqz v3, :cond_b6

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_8a

    :cond_b6
    if-eqz p1, :cond_e5

    if-nez v3, :cond_cb

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_e5

    invoke-static {v5}, Li4/v;->O(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v15

    invoke-static {v15, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_cb

    goto :goto_e5

    :cond_cb
    if-eqz v6, :cond_d3

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v13

    if-eq v13, v10, :cond_8a

    :cond_d3
    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_dd

    goto :goto_8a

    :cond_dd
    invoke-static {v5}, Li4/o;->e(Ljava/util/List;)I

    move-result v13

    invoke-interface {v5, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_8a

    :cond_e5
    :goto_e5
    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8a

    :cond_e9
    sget-object v14, Lokio/internal/-Path;->DOT:Lokio/ByteString;

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8a

    sget-object v14, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8a

    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8a

    :cond_fd
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_102
    if-ge v3, v0, :cond_115

    if-lez v3, :cond_109

    invoke-virtual {v2, v4}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    :cond_109
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokio/ByteString;

    invoke-virtual {v2, v1}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_102

    :cond_115
    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v0

    cmp-long v0, v0, v7

    if-nez v0, :cond_122

    sget-object v0, Lokio/internal/-Path;->DOT:Lokio/ByteString;

    invoke-virtual {v2, v0}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    :cond_122
    new-instance v0, Lokio/Path;

    invoke-virtual {v2}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/Path;-><init>(Lokio/ByteString;)V

    return-object v0

    :cond_12c
    :goto_12c
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->readByte()B

    move-result v3

    if-nez v4, :cond_137

    invoke-static {v3}, Lokio/internal/-Path;->toSlash(B)Lokio/ByteString;

    move-result-object v3

    move-object v4, v3

    :cond_137
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_e
.end method

.method private static final toSlash(B)Lokio/ByteString;
    .registers 3

    const/16 v0, 0x2f

    if-eq p0, v0, :cond_17

    const/16 v0, 0x5c

    if-ne p0, v0, :cond_b

    sget-object p0, Lokio/internal/-Path;->BACKSLASH:Lokio/ByteString;

    goto :goto_19

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not a directory separator: "

    invoke-static {v1, p0}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    sget-object p0, Lokio/internal/-Path;->SLASH:Lokio/ByteString;

    :goto_19
    return-object p0
.end method

.method private static final toSlash(Ljava/lang/String;)Lokio/ByteString;
    .registers 3

    const-string v0, "/"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object p0, Lokio/internal/-Path;->SLASH:Lokio/ByteString;

    goto :goto_15

    :cond_b
    const-string v0, "\\"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object p0, Lokio/internal/-Path;->BACKSLASH:Lokio/ByteString;

    :goto_15
    return-object p0

    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not a directory separator: "

    invoke-static {v1, p0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
