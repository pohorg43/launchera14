.class public final Lw5/b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nJavaTypeAttributes.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JavaTypeAttributes.kt\norg/jetbrains/kotlin/load/java/lazy/types/JavaTypeAttributesKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,57:1\n1#2:58\n*E\n"
    }
.end annotation


# direct methods
.method public static a(Ly6/z1;ZZLi5/a1;I)Lw5/a;
    .registers 15

    and-int/lit8 v0, p4, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    move v6, v1

    goto :goto_8

    :cond_7
    move v6, p1

    :goto_8
    and-int/lit8 p1, p4, 0x2

    if-eqz p1, :cond_e

    move v5, v1

    goto :goto_f

    :cond_e
    move v5, p2

    :goto_f
    and-int/lit8 p1, p4, 0x4

    const/4 p2, 0x0

    if-eqz p1, :cond_15

    move-object p3, p2

    :cond_15
    const-string p1, "<this>"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_22

    invoke-static {p3}, Ly0/b;->g(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    move-object v7, p1

    goto :goto_23

    :cond_22
    move-object v7, p2

    :goto_23
    const/4 v8, 0x0

    const/16 v9, 0x22

    new-instance p1, Lw5/a;

    const/4 v4, 0x0

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v9}, Lw5/a;-><init>(Ly6/z1;Lw5/c;ZZLjava/util/Set;Ly6/s0;I)V

    return-object p1
.end method
