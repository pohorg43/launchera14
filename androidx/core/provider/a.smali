.class public final synthetic Landroidx/core/provider/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Landroidx/core/provider/a;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/core/provider/a;

    invoke-direct {v0}, Landroidx/core/provider/a;-><init>()V

    sput-object v0, Landroidx/core/provider/a;->a:Landroidx/core/provider/a;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, [B

    check-cast p2, [B

    invoke-static {p1, p2}, Landroidx/core/provider/FontProvider;->a([B[B)I

    move-result p0

    return p0
.end method
