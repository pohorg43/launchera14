.class public final synthetic Lcom/android/common/util/b;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lz4/k;
    .registers 5

    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    invoke-direct {v0, p0, p1, p2, p3}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lz4/k;

    move-result-object p0

    return-object p0
.end method
