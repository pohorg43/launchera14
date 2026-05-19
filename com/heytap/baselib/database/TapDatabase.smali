.class public Lcom/heytap/baselib/database/TapDatabase;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/baselib/database/TapDatabase$Callback;,
        Lcom/heytap/baselib/database/TapDatabase$b;
    }
.end annotation


# static fields
.field public static final a:Lh4/f;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/heytap/baselib/database/TapDatabase$b;

    sget-object v0, Lkotlin/a;->a:Lkotlin/a;

    sget-object v1, Lcom/heytap/baselib/database/TapDatabase$a;->a:Lcom/heytap/baselib/database/TapDatabase$a;

    invoke-static {v0, v1}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lcom/heytap/baselib/database/TapDatabase;->a:Lh4/f;

    return-void
.end method
