.class public final Ls5/f$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ls5/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls5/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Ls5/f$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ls5/f$a;

    invoke-direct {v0}, Ls5/f$a;-><init>()V

    sput-object v0, Ls5/f$a;->a:Ls5/f$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ly5/n;Li5/o0;)Lm6/g;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly5/n;",
            "Li5/o0;",
            ")",
            "Lm6/g<",
            "*>;"
        }
    .end annotation

    const-string p0, "field"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "descriptor"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
