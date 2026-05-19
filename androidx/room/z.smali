.class public final synthetic Landroidx/room/z;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/arch/core/util/Function;


# static fields
.field public static final synthetic a:Landroidx/room/z;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/room/z;

    invoke-direct {v0}, Landroidx/room/z;-><init>()V

    sput-object v0, Landroidx/room/z;->a:Landroidx/room/z;

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

    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->simpleQueryForString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
