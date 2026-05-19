.class public final synthetic Lc5/b0$c;
.super Lkotlin/jvm/internal/FunctionReference;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc5/b0;->h(I)Li5/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReference;",
        "Lkotlin/jvm/functions/Function2<",
        "Lu6/v;",
        "Lc6/n;",
        "Li5/o0;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lc5/b0$c;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lc5/b0$c;

    invoke-direct {v0}, Lc5/b0$c;-><init>()V

    sput-object v0, Lc5/b0$c;->a:Lc5/b0$c;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/FunctionReference;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .registers 1

    const-string p0, "loadProperty"

    return-object p0
.end method

.method public final getOwner()Lz4/g;
    .registers 1

    const-class p0, Lu6/v;

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object p0

    return-object p0
.end method

.method public final getSignature()Ljava/lang/String;
    .registers 1

    const-string p0, "loadProperty(Lorg/jetbrains/kotlin/metadata/ProtoBuf$Property;)Lorg/jetbrains/kotlin/descriptors/PropertyDescriptor;"

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lu6/v;

    check-cast p2, Lc6/n;

    const-string p0, "p0"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "p1"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lu6/v;->g(Lc6/n;)Li5/o0;

    move-result-object p0

    return-object p0
.end method
