.class public final Lc5/b0$a;
.super Lc5/t$b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc5/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# static fields
.field public static final synthetic h:[Lz4/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final c:Lc5/p0$a;

.field public final d:Lc5/p0$a;

.field public final e:Lc5/p0$b;

.field public final f:Lc5/p0$b;

.field public final g:Lc5/p0$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    const-class v0, Lc5/b0$a;

    const/4 v1, 0x5

    new-array v1, v1, [Lz4/n;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v3

    const-string v4, "kotlinClass"

    const-string v5, "getKotlinClass()Lorg/jetbrains/kotlin/descriptors/runtime/components/ReflectKotlinClass;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lz4/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lz4/p;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v3

    const-string v4, "scope"

    const-string v5, "getScope()Lorg/jetbrains/kotlin/resolve/scopes/MemberScope;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lz4/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lz4/p;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v3

    const-string v4, "multifileFacade"

    const-string v5, "getMultifileFacade()Ljava/lang/Class;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lz4/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lz4/p;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v3

    const-string v4, "metadata"

    const-string v5, "getMetadata()Lkotlin/Triple;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lz4/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lz4/p;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v0

    const-string v3, "members"

    const-string v4, "getMembers()Ljava/util/Collection;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lz4/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lz4/p;

    move-result-object v0

    const/4 v2, 0x4

    aput-object v0, v1, v2

    sput-object v1, Lc5/b0$a;->h:[Lz4/n;

    return-void
.end method

.method public constructor <init>(Lc5/b0;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lc5/t$b;-><init>(Lc5/t;)V

    new-instance v0, Lc5/b0$a$a;

    invoke-direct {v0, p1}, Lc5/b0$a$a;-><init>(Lc5/b0;)V

    invoke-static {v0}, Lc5/p0;->d(Lkotlin/jvm/functions/Function0;)Lc5/p0$a;

    move-result-object v0

    iput-object v0, p0, Lc5/b0$a;->c:Lc5/p0$a;

    new-instance v0, Lc5/b0$a$e;

    invoke-direct {v0, p0}, Lc5/b0$a$e;-><init>(Lc5/b0$a;)V

    invoke-static {v0}, Lc5/p0;->d(Lkotlin/jvm/functions/Function0;)Lc5/p0$a;

    move-result-object v0

    iput-object v0, p0, Lc5/b0$a;->d:Lc5/p0$a;

    new-instance v0, Lc5/b0$a$d;

    invoke-direct {v0, p0, p1}, Lc5/b0$a$d;-><init>(Lc5/b0$a;Lc5/b0;)V

    new-instance v1, Lc5/p0$b;

    invoke-direct {v1, v0}, Lc5/p0$b;-><init>(Lkotlin/jvm/functions/Function0;)V

    iput-object v1, p0, Lc5/b0$a;->e:Lc5/p0$b;

    new-instance v0, Lc5/b0$a$c;

    invoke-direct {v0, p0}, Lc5/b0$a$c;-><init>(Lc5/b0$a;)V

    new-instance v1, Lc5/p0$b;

    invoke-direct {v1, v0}, Lc5/p0$b;-><init>(Lkotlin/jvm/functions/Function0;)V

    iput-object v1, p0, Lc5/b0$a;->f:Lc5/p0$b;

    new-instance v0, Lc5/b0$a$b;

    invoke-direct {v0, p1, p0}, Lc5/b0$a$b;-><init>(Lc5/b0;Lc5/b0$a;)V

    invoke-static {v0}, Lc5/p0;->d(Lkotlin/jvm/functions/Function0;)Lc5/p0$a;

    move-result-object p1

    iput-object p1, p0, Lc5/b0$a;->g:Lc5/p0$a;

    return-void
.end method

.method public static final a(Lc5/b0$a;)Ln5/e;
    .registers 3

    iget-object p0, p0, Lc5/b0$a;->c:Lc5/p0$a;

    sget-object v0, Lc5/b0$a;->h:[Lz4/n;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lc5/p0$a;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ln5/e;

    return-object p0
.end method
