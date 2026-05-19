.class public final Ln5/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lx5/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln5/j$a;
    }
.end annotation


# static fields
.field public static final a:Ln5/j;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ln5/j;

    invoke-direct {v0}, Ln5/j;-><init>()V

    sput-object v0, Ln5/j;->a:Ln5/j;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ly5/l;)Lx5/a;
    .registers 2

    const-string p0, "javaElement"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ln5/j$a;

    check-cast p1, Lo5/w;

    invoke-direct {p0, p1}, Ln5/j$a;-><init>(Lo5/w;)V

    return-object p0
.end method
