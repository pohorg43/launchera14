.class public final synthetic Landroidx/room/y;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/arch/core/util/Function;


# static fields
.field public static final synthetic a:Landroidx/room/y;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/room/y;

    invoke-direct {v0}, Landroidx/room/y;-><init>()V

    sput-object v0, Landroidx/room/y;->a:Landroidx/room/y;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Landroidx/sqlite/db/SupportSQLiteStatement;

    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
