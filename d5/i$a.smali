.class public final Ld5/i$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld5/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ly4/d;

.field public final b:[Ljava/lang/reflect/Method;

.field public final c:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ly4/d;[Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .registers 5

    const-string v0, "argumentRange"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unbox"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld5/i$a;->a:Ly4/d;

    iput-object p2, p0, Ld5/i$a;->b:[Ljava/lang/reflect/Method;

    iput-object p3, p0, Ld5/i$a;->c:Ljava/lang/reflect/Method;

    return-void
.end method
