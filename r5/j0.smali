.class public final Lr5/j0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\npropertiesConventionUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 propertiesConventionUtil.kt\norg/jetbrains/kotlin/load/java/PropertiesConventionUtilKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,102:1\n766#2:103\n857#2,2:104\n*S KotlinDebug\n*F\n+ 1 propertiesConventionUtil.kt\norg/jetbrains/kotlin/load/java/PropertiesConventionUtilKt\n*L\n90#1:103\n90#1:104,2\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Lh6/f;Z)Lh6/f;
    .registers 5

    const-string v0, "methodName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_a

    const-string p1, "is"

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    const/4 v0, 0x4

    const-string v1, "set"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, p1, v0}, Lr5/j0;->b(Lh6/f;Ljava/lang/String;ZLjava/lang/String;I)Lh6/f;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lh6/f;Ljava/lang/String;ZLjava/lang/String;I)Lh6/f;
    .registers 10

    and-int/lit8 v0, p4, 0x4

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    move p2, v1

    :cond_6
    and-int/lit8 p4, p4, 0x8

    const/4 v0, 0x0

    if-eqz p4, :cond_c

    move-object p3, v0

    :cond_c
    iget-boolean p4, p0, Lh6/f;->b:Z

    if-eqz p4, :cond_12

    goto/16 :goto_12b

    :cond_12
    invoke-virtual {p0}, Lh6/f;->d()Ljava/lang/String;

    move-result-object p4

    const-string v2, "methodName.identifier"

    invoke-static {p4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p4, p1, v3, v2}, Lk7/m;->s(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v2

    if-nez v2, :cond_25

    goto/16 :goto_12b

    :cond_25
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v2, v4, :cond_31

    goto/16 :goto_12b

    :cond_31
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x61

    if-gt v4, v2, :cond_43

    const/16 v4, 0x7b

    if-ge v2, v4, :cond_43

    move v2, v1

    goto :goto_44

    :cond_43
    move v2, v3

    :goto_44
    if-eqz v2, :cond_48

    goto/16 :goto_12b

    :cond_48
    if-eqz p3, :cond_5f

    invoke-static {p3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p4, p1}, Lk7/q;->J(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object p0

    goto/16 :goto_131

    :cond_5f
    if-nez p2, :cond_63

    goto/16 :goto_131

    :cond_63
    invoke-static {p4, p1}, Lk7/q;->J(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "<this>"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_74

    move p2, v1

    goto :goto_75

    :cond_74
    move p2, v3

    :goto_75
    if-nez p2, :cond_125

    invoke-static {p0, v3, v1}, Lg7/a;->b(Ljava/lang/String;IZ)Z

    move-result p2

    if-nez p2, :cond_7f

    goto/16 :goto_125

    :cond_7f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    const-string p3, "this as java.lang.String).substring(startIndex)"

    if-eq p2, v1, :cond_ed

    invoke-static {p0, v1, v1}, Lg7/a;->b(Ljava/lang/String;IZ)Z

    move-result p2

    if-nez p2, :cond_8e

    goto :goto_ed

    :cond_8e
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ly4/d;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-direct {p1, v3, p2}, Ly4/d;-><init>(II)V

    invoke-virtual {p1}, Ly4/b;->a()Li4/f0;

    move-result-object p1

    :cond_a0
    move-object p2, p1

    check-cast p2, Ly4/c;

    iget-boolean p2, p2, Ly4/c;->c:Z

    if-eqz p2, :cond_ba

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object p4, p2

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    invoke-static {p0, p4, v1}, Lg7/a;->b(Ljava/lang/String;IZ)Z

    move-result p4

    xor-int/2addr p4, v1

    if-eqz p4, :cond_a0

    goto :goto_bb

    :cond_ba
    move-object p2, v0

    :goto_bb
    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_e8

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p1, v1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    const-string v1, "this as java.lang.String…ing(startIndex, endIndex)"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p4}, Lg7/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_125

    :cond_e8
    invoke-static {p0}, Lg7/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_125

    :cond_ed
    :goto_ed
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_f8

    move p1, v1

    goto :goto_f9

    :cond_f8
    move p1, v3

    :goto_f9
    if-eqz p1, :cond_fc

    goto :goto_125

    :cond_fc
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 p2, 0x41

    if-gt p2, p1, :cond_109

    const/16 p2, 0x5b

    if-ge p1, p2, :cond_109

    move v3, v1

    :cond_109
    if-eqz v3, :cond_125

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_125
    :goto_125
    invoke-static {p0}, Lh6/f;->g(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_12d

    :goto_12b
    move-object p0, v0

    goto :goto_131

    :cond_12d
    invoke-static {p0}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object p0

    :goto_131
    return-object p0
.end method
