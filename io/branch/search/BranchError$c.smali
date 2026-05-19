.class public final Lio/branch/search/BranchError$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/BranchError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lio/branch/search/BranchError$c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/branch/search/BranchLocalError;)Lio/branch/search/BranchError;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "localError"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, Lio/branch/search/BranchLocalError$OptedOut;

    if-eqz p0, :cond_c

    sget-object p0, Lio/branch/search/BranchError$j;->a:Lio/branch/search/BranchError$j;

    goto :goto_49

    :cond_c
    instance-of p0, p1, Lio/branch/search/BranchLocalError$WasCancelled;

    if-eqz p0, :cond_13

    sget-object p0, Lio/branch/search/BranchError$u;->a:Lio/branch/search/BranchError$u;

    goto :goto_49

    :cond_13
    instance-of p0, p1, Lio/branch/search/BranchLocalError$Unknown;

    if-eqz p0, :cond_18

    goto :goto_47

    :cond_18
    instance-of p0, p1, Lio/branch/search/BranchLocalError$EmptyQuery;

    if-eqz p0, :cond_1f

    sget-object p0, Lio/branch/search/BranchError$f;->a:Lio/branch/search/BranchError$f;

    goto :goto_49

    :cond_1f
    instance-of p0, p1, Lio/branch/search/BranchLocalError$DBNotReady;

    const-string v0, "localError.internalMessage"

    if-eqz p0, :cond_34

    new-instance p0, Lio/branch/search/BranchError$e;

    check-cast p1, Lio/branch/search/BranchLocalError$DBNotReady;

    invoke-virtual {p1}, Lio/branch/search/BranchLocalError$InvalidDB;->getInternalMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lio/branch/search/BranchError$e;-><init>(Ljava/lang/String;)V

    goto :goto_49

    :cond_34
    instance-of p0, p1, Lio/branch/search/BranchLocalError$CorruptDB;

    if-eqz p0, :cond_47

    new-instance p0, Lio/branch/search/BranchError$d;

    check-cast p1, Lio/branch/search/BranchLocalError$CorruptDB;

    invoke-virtual {p1}, Lio/branch/search/BranchLocalError$InvalidDB;->getInternalMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lio/branch/search/BranchError$d;-><init>(Ljava/lang/String;)V

    goto :goto_49

    :cond_47
    :goto_47
    sget-object p0, Lio/branch/search/BranchError$t;->a:Lio/branch/search/BranchError$t;

    :goto_49
    return-object p0
.end method

.method public final a(Lio/branch/search/BranchSearchError;)Lio/branch/search/BranchError;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "localError"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/branch/search/BranchSearchError;->getErrorCode()Lio/branch/search/BranchSearchError$ERR_CODE;

    move-result-object p0

    if-nez p0, :cond_c

    goto :goto_42

    :cond_c
    sget-object p1, Lio/branch/search/g;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p1, p0

    packed-switch p0, :pswitch_data_46

    goto :goto_42

    :pswitch_18  #0xe
    sget-object p0, Lio/branch/search/BranchError$m;->a:Lio/branch/search/BranchError$m;

    goto :goto_44

    :pswitch_1b  #0xd
    sget-object p0, Lio/branch/search/BranchError$o;->a:Lio/branch/search/BranchError$o;

    goto :goto_44

    :pswitch_1e  #0xc
    sget-object p0, Lio/branch/search/BranchError$p;->a:Lio/branch/search/BranchError$p;

    goto :goto_44

    :pswitch_21  #0xb
    sget-object p0, Lio/branch/search/BranchError$n;->a:Lio/branch/search/BranchError$n;

    goto :goto_44

    :pswitch_24  #0xa
    sget-object p0, Lio/branch/search/BranchError$q;->a:Lio/branch/search/BranchError$q;

    goto :goto_44

    :pswitch_27  #0x9
    sget-object p0, Lio/branch/search/BranchError$k;->a:Lio/branch/search/BranchError$k;

    goto :goto_44

    :pswitch_2a  #0x8
    sget-object p0, Lio/branch/search/BranchError$l;->a:Lio/branch/search/BranchError$l;

    goto :goto_44

    :pswitch_2d  #0x7
    sget-object p0, Lio/branch/search/BranchError$g;->a:Lio/branch/search/BranchError$g;

    goto :goto_44

    :pswitch_30  #0x6
    sget-object p0, Lio/branch/search/BranchError$b;->a:Lio/branch/search/BranchError$b;

    goto :goto_44

    :pswitch_33  #0x5
    sget-object p0, Lio/branch/search/BranchError$i;->a:Lio/branch/search/BranchError$i;

    goto :goto_44

    :pswitch_36  #0x4
    sget-object p0, Lio/branch/search/BranchError$h;->a:Lio/branch/search/BranchError$h;

    goto :goto_44

    :pswitch_39  #0x3
    sget-object p0, Lio/branch/search/BranchError$r;->a:Lio/branch/search/BranchError$r;

    goto :goto_44

    :pswitch_3c  #0x2
    sget-object p0, Lio/branch/search/BranchError$a;->a:Lio/branch/search/BranchError$a;

    goto :goto_44

    :pswitch_3f  #0x1
    sget-object p0, Lio/branch/search/BranchError$s;->a:Lio/branch/search/BranchError$s;

    goto :goto_44

    :goto_42
    sget-object p0, Lio/branch/search/BranchError$t;->a:Lio/branch/search/BranchError$t;

    :goto_44
    return-object p0

    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_3f  #00000001
        :pswitch_3c  #00000002
        :pswitch_39  #00000003
        :pswitch_36  #00000004
        :pswitch_33  #00000005
        :pswitch_30  #00000006
        :pswitch_2d  #00000007
        :pswitch_2a  #00000008
        :pswitch_27  #00000009
        :pswitch_24  #0000000a
        :pswitch_21  #0000000b
        :pswitch_1e  #0000000c
        :pswitch_1b  #0000000d
        :pswitch_18  #0000000e
    .end packed-switch
.end method
