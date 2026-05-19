.class public final Ll5/d0$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ll5/d0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll5/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final b:Ll5/d0$b;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ll5/d0$b;

    invoke-direct {v0}, Ll5/d0$b;-><init>()V

    sput-object v0, Ll5/d0$b;->b:Ll5/d0$b;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ll5/a0;Lh6/c;Lx6/m;)Li5/l0;
    .registers 4

    const-string p0, "module"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "fqName"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "storageManager"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ll5/t;

    invoke-direct {p0, p1, p2, p3}, Ll5/t;-><init>(Ll5/a0;Lh6/c;Lx6/m;)V

    return-object p0
.end method
