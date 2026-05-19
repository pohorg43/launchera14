.class public final Lg5/c$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg5/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg5/c$a$a;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFunctionClassKind.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FunctionClassKind.kt\norg/jetbrains/kotlin/builtins/functions/FunctionClassKind$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,59:1\n1282#2,2:60\n*S KotlinDebug\n*F\n+ 1 FunctionClassKind.kt\norg/jetbrains/kotlin/builtins/functions/FunctionClassKind$Companion\n*L\n27#1:60,2\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lh6/c;)Lg5/c$a$a;
    .registers 11

    const-string p0, "className"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageFqName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lg5/c;->values()[Lg5/c;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_17
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ge v2, v0, :cond_37

    aget-object v5, p0, v2

    iget-object v6, v5, Lg5/c;->a:Lh6/c;

    invoke-static {v6, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_30

    iget-object v6, v5, Lg5/c;->b:Ljava/lang/String;

    const/4 v7, 0x2

    invoke-static {p1, v6, v1, v7}, Lk7/m;->s(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v6

    if-eqz v6, :cond_30

    move v6, v3

    goto :goto_31

    :cond_30
    move v6, v1

    :goto_31
    if-eqz v6, :cond_34

    goto :goto_38

    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_37
    move-object v5, v4

    :goto_38
    if-nez v5, :cond_3b

    return-object v4

    :cond_3b
    iget-object p0, v5, Lg5/c;->b:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "this as java.lang.String).substring(startIndex)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_52

    move p1, v3

    goto :goto_53

    :cond_52
    move p1, v1

    :goto_53
    if-eqz p1, :cond_57

    :goto_55
    move-object p0, v4

    goto :goto_7b

    :cond_57
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    move p2, v1

    move v0, p2

    :goto_5d
    if-ge p2, p1, :cond_77

    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    if-ltz v2, :cond_6d

    const/16 v6, 0xa

    if-ge v2, v6, :cond_6d

    move v6, v3

    goto :goto_6e

    :cond_6d
    move v6, v1

    :goto_6e
    if-nez v6, :cond_71

    goto :goto_55

    :cond_71
    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v2

    add-int/lit8 p2, p2, 0x1

    goto :goto_5d

    :cond_77
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_7b
    if-eqz p0, :cond_87

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    new-instance p1, Lg5/c$a$a;

    invoke-direct {p1, v5, p0}, Lg5/c$a$a;-><init>(Lg5/c;I)V

    return-object p1

    :cond_87
    return-object v4
.end method
