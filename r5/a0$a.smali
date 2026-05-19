.class public final synthetic Lr5/a0$a;
.super Lkotlin/jvm/internal/FunctionReference;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr5/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReference;",
        "Lkotlin/jvm/functions/Function1<",
        "Lh6/c;",
        "Lr5/k0;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lr5/a0$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lr5/a0$a;

    invoke-direct {v0}, Lr5/a0$a;-><init>()V

    sput-object v0, Lr5/a0$a;->a:Lr5/a0$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/FunctionReference;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .registers 1

    const-string p0, "getDefaultReportLevelForAnnotation"

    return-object p0
.end method

.method public final getOwner()Lz4/g;
    .registers 2

    const-class p0, Lr5/y;

    const-string v0, "compiler.common.jvm"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinPackage(Ljava/lang/Class;Ljava/lang/String;)Lz4/g;

    move-result-object p0

    return-object p0
.end method

.method public final getSignature()Ljava/lang/String;
    .registers 1

    const-string p0, "getDefaultReportLevelForAnnotation(Lorg/jetbrains/kotlin/name/FqName;)Lorg/jetbrains/kotlin/load/java/ReportLevel;"

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    check-cast p1, Lh6/c;

    const-string p0, "p0"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lr5/y;->a:Lh6/c;

    const-string p0, "annotationFqName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lr5/h0;->a:Lr5/h0$a;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lr5/h0$a;->b:Lr5/h0;

    new-instance v0, Lh4/e;

    const/4 v1, 0x1

    const/4 v2, 0x7

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lh4/e;-><init>(III)V

    const-string v1, "annotation"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "configuredReportLevels"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "configuredKotlinVersion"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lr5/i0;

    invoke-virtual {p0, p1}, Lr5/i0;->a(Lh6/c;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr5/k0;

    if-eqz p0, :cond_38

    goto :goto_60

    :cond_38
    sget-object p0, Lr5/y;->c:Lr5/h0;

    check-cast p0, Lr5/i0;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "fqName"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lr5/i0;->c:Lx6/h;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr5/z;

    if-nez p0, :cond_51

    sget-object p0, Lr5/k0;->b:Lr5/k0;

    goto :goto_60

    :cond_51
    iget-object p1, p0, Lr5/z;->b:Lh4/e;

    if-eqz p1, :cond_5e

    invoke-virtual {p1, v0}, Lh4/e;->a(Lh4/e;)I

    move-result p1

    if-gtz p1, :cond_5e

    iget-object p0, p0, Lr5/z;->c:Lr5/k0;

    goto :goto_60

    :cond_5e
    iget-object p0, p0, Lr5/z;->a:Lr5/k0;

    :goto_60
    return-object p0
.end method
