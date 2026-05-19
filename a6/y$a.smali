.class public final La6/y$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements La6/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La6/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:La6/y$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, La6/y$a;

    invoke-direct {v0}, La6/y$a;-><init>()V

    sput-object v0, La6/y$a;->a:La6/y$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string p0, "packageFqName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Li4/y;->a:Li4/y;

    return-object p0
.end method
