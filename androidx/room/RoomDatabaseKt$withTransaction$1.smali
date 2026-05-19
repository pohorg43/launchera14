.class final Landroidx/room/RoomDatabaseKt$withTransaction$1;
.super Ln4/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/RoomDatabaseKt;->withTransaction(Landroidx/room/RoomDatabase;Lkotlin/jvm/functions/Function1;Ll4/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ln4/c;"
    }
.end annotation

.annotation runtime Ln4/e;
    c = "androidx.room.RoomDatabaseKt"
    f = "RoomDatabase.kt"
    l = {
        0x32,
        0x33
    }
    m = "withTransaction"
.end annotation


# instance fields
.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public label:I

.field public synthetic result:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ll4/d;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll4/d<",
            "-",
            "Landroidx/room/RoomDatabaseKt$withTransaction$1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ln4/c;-><init>(Ll4/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iput-object p1, p0, Landroidx/room/RoomDatabaseKt$withTransaction$1;->result:Ljava/lang/Object;

    iget p1, p0, Landroidx/room/RoomDatabaseKt$withTransaction$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/room/RoomDatabaseKt$withTransaction$1;->label:I

    const/4 p1, 0x0

    invoke-static {p1, p1, p0}, Landroidx/room/RoomDatabaseKt;->withTransaction(Landroidx/room/RoomDatabase;Lkotlin/jvm/functions/Function1;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
