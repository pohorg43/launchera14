.class public abstract Lc5/t$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc5/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "b"
.end annotation


# static fields
.field public static final synthetic b:[Lz4/n;
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
.field public final a:Lc5/p0$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Lz4/n;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lc5/t$b;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v2

    const-string v3, "moduleData"

    const-string v4, "getModuleData()Lorg/jetbrains/kotlin/descriptors/runtime/components/RuntimeModuleData;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lz4/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lz4/p;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lc5/t$b;->b:[Lz4/n;

    return-void
.end method

.method public constructor <init>(Lc5/t;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lc5/t$b$a;

    invoke-direct {v0, p1}, Lc5/t$b$a;-><init>(Lc5/t;)V

    invoke-static {v0}, Lc5/p0;->d(Lkotlin/jvm/functions/Function0;)Lc5/p0$a;

    move-result-object p1

    iput-object p1, p0, Lc5/t$b;->a:Lc5/p0$a;

    return-void
.end method
