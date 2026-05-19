.class public final Ln4/g$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln4/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/reflect/Method;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final b:Ljava/lang/reflect/Method;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final c:Ljava/lang/reflect/Method;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln4/g$a;->a:Ljava/lang/reflect/Method;

    iput-object p2, p0, Ln4/g$a;->b:Ljava/lang/reflect/Method;

    iput-object p3, p0, Ln4/g$a;->c:Ljava/lang/reflect/Method;

    return-void
.end method
