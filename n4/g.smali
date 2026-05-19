.class public final Ln4/g;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln4/g$a;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDebugMetadata.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DebugMetadata.kt\nkotlin/coroutines/jvm/internal/ModuleNameRetriever\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,134:1\n1#2:135\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Ln4/g$a;

.field public static b:Ln4/g$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Ln4/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Ln4/g$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    sput-object v0, Ln4/g;->a:Ln4/g$a;

    return-void
.end method
