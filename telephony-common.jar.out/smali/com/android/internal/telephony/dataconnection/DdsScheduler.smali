.class public Lcom/android/internal/telephony/dataconnection/DdsScheduler;
.super Lcom/android/internal/util/StateMachine;
.source "DdsScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DdsScheduler$1;,
        Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsAutoRevertState;,
        Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsSwitchState;,
        Lcom/android/internal/telephony/dataconnection/DdsScheduler$PsAttachReservedState;,
        Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsReservedState;,
        Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsIdleState;,
        Lcom/android/internal/telephony/dataconnection/DdsScheduler$DefaultState;,
        Lcom/android/internal/telephony/dataconnection/DdsScheduler$NetworkRequestInfo;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "DdsScheduler"

.field private static sDdsScheduler:Lcom/android/internal/telephony/dataconnection/DdsScheduler;


# instance fields
.field private final MODEM_DATA_CAPABILITY_UNKNOWN:I

.field private final MODEM_DUAL_DATA_CAPABLE:I

.field private final MODEM_SINGLE_DATA_CAPABLE:I

.field private final OVERRIDE_MODEM_DUAL_DATA_CAP_PROP:Ljava/lang/String;

.field private mCurrentDds:I

.field private mDctController:Lcom/android/internal/telephony/dataconnection/DctController;

.field private mDdsAutoRevertState:Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsAutoRevertState;

.field private mDdsIdleState:Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsIdleState;

.field private mDdsReservedState:Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsReservedState;

.field private mDdsSwitchState:Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsSwitchState;

.field private mDefaultState:Lcom/android/internal/telephony/dataconnection/DdsScheduler$DefaultState;

.field private mInbox:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/dataconnection/DdsScheduler$NetworkRequestInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPsAttachReservedState:Lcom/android/internal/telephony/dataconnection/DdsScheduler$PsAttachReservedState;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    const-string v0, "DdsScheduler"

    invoke-direct {p0, v0}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DefaultState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DefaultState;-><init>(Lcom/android/internal/telephony/dataconnection/DdsScheduler;Lcom/android/internal/telephony/dataconnection/DdsScheduler$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DdsScheduler$DefaultState;

    new-instance v0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsIdleState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsIdleState;-><init>(Lcom/android/internal/telephony/dataconnection/DdsScheduler;Lcom/android/internal/telephony/dataconnection/DdsScheduler$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mDdsIdleState:Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsIdleState;

    new-instance v0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsReservedState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsReservedState;-><init>(Lcom/android/internal/telephony/dataconnection/DdsScheduler;Lcom/android/internal/telephony/dataconnection/DdsScheduler$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mDdsReservedState:Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsReservedState;

    new-instance v0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$PsAttachReservedState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/dataconnection/DdsScheduler$PsAttachReservedState;-><init>(Lcom/android/internal/telephony/dataconnection/DdsScheduler;Lcom/android/internal/telephony/dataconnection/DdsScheduler$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mPsAttachReservedState:Lcom/android/internal/telephony/dataconnection/DdsScheduler$PsAttachReservedState;

    new-instance v0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsSwitchState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsSwitchState;-><init>(Lcom/android/internal/telephony/dataconnection/DdsScheduler;Lcom/android/internal/telephony/dataconnection/DdsScheduler$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mDdsSwitchState:Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsSwitchState;

    new-instance v0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsAutoRevertState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsAutoRevertState;-><init>(Lcom/android/internal/telephony/dataconnection/DdsScheduler;Lcom/android/internal/telephony/dataconnection/DdsScheduler$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mDdsAutoRevertState:Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsAutoRevertState;

    iput v2, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mCurrentDds:I

    iput v2, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->MODEM_DATA_CAPABILITY_UNKNOWN:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->MODEM_SINGLE_DATA_CAPABLE:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->MODEM_DUAL_DATA_CAPABLE:I

    const-string v0, "persist.test.msim.config"

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->OVERRIDE_MODEM_DUAL_DATA_CAP_PROP:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mInbox:Ljava/util/List;

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DdsScheduler$DefaultState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->addState(Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mDdsIdleState:Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsIdleState;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DdsScheduler$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mDdsReservedState:Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsReservedState;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DdsScheduler$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mDdsSwitchState:Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsSwitchState;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DdsScheduler$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mDdsAutoRevertState:Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsAutoRevertState;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DdsScheduler$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mPsAttachReservedState:Lcom/android/internal/telephony/dataconnection/DdsScheduler$PsAttachReservedState;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DdsScheduler$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mDdsIdleState:Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsIdleState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->setInitialState(Lcom/android/internal/util/State;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/dataconnection/DdsScheduler;)Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsSwitchState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mDdsSwitchState:Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsSwitchState;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/dataconnection/DdsScheduler;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DdsScheduler;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/dataconnection/DdsScheduler;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DdsScheduler;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/dataconnection/DdsScheduler;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DdsScheduler;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/dataconnection/DdsScheduler;)Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsAutoRevertState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mDdsAutoRevertState:Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsAutoRevertState;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/telephony/dataconnection/DdsScheduler;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DdsScheduler;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/telephony/dataconnection/DdsScheduler;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DdsScheduler;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/internal/telephony/dataconnection/DdsScheduler;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DdsScheduler;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/internal/telephony/dataconnection/DdsScheduler;Landroid/net/NetworkRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DdsScheduler;
    .param p1, "x1"    # Landroid/net/NetworkRequest;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->requestPsAttach(Landroid/net/NetworkRequest;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/internal/telephony/dataconnection/DdsScheduler;)Lcom/android/internal/telephony/dataconnection/DdsScheduler$PsAttachReservedState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mPsAttachReservedState:Lcom/android/internal/telephony/dataconnection/DdsScheduler$PsAttachReservedState;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/telephony/dataconnection/DdsScheduler;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DdsScheduler;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/internal/telephony/dataconnection/DdsScheduler;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DdsScheduler;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/internal/telephony/dataconnection/DdsScheduler;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DdsScheduler;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/internal/telephony/dataconnection/DdsScheduler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->requestPsDetach()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/internal/telephony/dataconnection/DdsScheduler;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DdsScheduler;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/internal/telephony/dataconnection/DdsScheduler;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DdsScheduler;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/internal/telephony/dataconnection/DdsScheduler;)Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsIdleState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mDdsIdleState:Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsIdleState;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/internal/telephony/dataconnection/DdsScheduler;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DdsScheduler;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/internal/telephony/dataconnection/DdsScheduler;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DdsScheduler;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/dataconnection/DdsScheduler;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/dataconnection/DdsScheduler;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/dataconnection/DdsScheduler;)Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsReservedState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mDdsReservedState:Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsReservedState;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/dataconnection/DdsScheduler;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DdsScheduler;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method private static createDdsScheduler()Lcom/android/internal/telephony/dataconnection/DdsScheduler;
    .locals 1

    .prologue
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    invoke-direct {v0}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;-><init>()V

    .local v0, "ddsScheduler":Lcom/android/internal/telephony/dataconnection/DdsScheduler;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->start()V

    return-object v0
.end method

.method public static getInstance()Lcom/android/internal/telephony/dataconnection/DdsScheduler;
    .locals 3

    .prologue
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->sDdsScheduler:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->createDdsScheduler()Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->sDdsScheduler:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    :cond_0
    const-string v0, "DdsScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInstance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->sDdsScheduler:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->sDdsScheduler:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    return-object v0
.end method

.method private getMaxDataAllowed()I
    .locals 7

    .prologue
    const/4 v6, -0x1

    invoke-static {}, Lcom/android/internal/telephony/ModemStackController;->getInstance()Lcom/android/internal/telephony/ModemStackController;

    move-result-object v1

    .local v1, "modemStackController":Lcom/android/internal/telephony/ModemStackController;
    const-string v3, "DdsScheduler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ModemStackController = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/internal/telephony/ModemStackController;->getMaxDataAllowed()I

    move-result v0

    .local v0, "maxData":I
    const-string v3, "DdsScheduler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "modem value of max_data = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "persist.test.msim.config"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .local v2, "override":I
    if-eq v2, v6, :cond_0

    const-string v3, "DdsScheduler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Overriding modem max_data_value with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    :cond_0
    return v0
.end method

.method public static init()V
    .locals 3

    .prologue
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->sDdsScheduler:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->getInstance()Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->sDdsScheduler:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->sDdsScheduler:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    invoke-direct {v0}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->registerCallbacks()V

    const-string v0, "DdsScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->sDdsScheduler:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private registerCallbacks()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    if-nez v0, :cond_0

    const-string v0, "DdsScheduler"

    const-string v1, "registerCallbacks"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const v2, 0x84002

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DctController;->registerForOnDemandDataSwitchInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const v2, 0x84003

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DctController;->registerForOnDemandPsAttach(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private requestDdsSwitch(Landroid/net/NetworkRequest;)V
    .locals 1
    .param p1, "n"    # Landroid/net/NetworkRequest;

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DctController;->setOnDemandDataSubId(Landroid/net/NetworkRequest;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->requestPsAttach(Landroid/net/NetworkRequest;)V

    goto :goto_0
.end method

.method private requestPsAttach(Landroid/net/NetworkRequest;)V
    .locals 1
    .param p1, "n"    # Landroid/net/NetworkRequest;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DctController;->doPsAttach(Landroid/net/NetworkRequest;)V

    return-void
.end method

.method private requestPsDetach()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->doPsDetach()V

    return-void
.end method


# virtual methods
.method acceptWaitingRequest()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .local v0, "anyAccepted":Z
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mInbox:Ljava/util/List;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mInbox:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mInbox:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mInbox:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/dataconnection/DdsScheduler$NetworkRequestInfo;

    iget-object v2, v3, Lcom/android/internal/telephony/dataconnection/DdsScheduler$NetworkRequestInfo;->mRequest:Landroid/net/NetworkRequest;

    .local v2, "nr":Landroid/net/NetworkRequest;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->getSubIdFromNetworkRequest(Landroid/net/NetworkRequest;)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->getCurrentDds()I

    move-result v5

    if-ne v3, v5, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->notifyRequestAccepted(Landroid/net/NetworkRequest;)V

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    .end local v2    # "nr":Landroid/net/NetworkRequest;
    :cond_1
    const-string v3, "DdsScheduler"

    const-string v5, "No request can be accepted for current sub"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    monitor-exit v4

    :goto_1
    return v3

    .restart local v1    # "i":I
    :cond_2
    monitor-exit v4

    move v3, v0

    goto :goto_1

    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method addRequest(Landroid/net/NetworkRequest;)V
    .locals 3
    .param p1, "req"    # Landroid/net/NetworkRequest;

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mInbox:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mInbox:Ljava/util/List;

    new-instance v2, Lcom/android/internal/telephony/dataconnection/DdsScheduler$NetworkRequestInfo;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/telephony/dataconnection/DdsScheduler$NetworkRequestInfo;-><init>(Lcom/android/internal/telephony/dataconnection/DdsScheduler;Landroid/net/NetworkRequest;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCurrentDds()I
    .locals 4

    .prologue
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    .local v0, "subController":Lcom/android/internal/telephony/SubscriptionController;
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mCurrentDds:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mCurrentDds:I

    :cond_0
    const-string v1, "DdsScheduler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCurrentDds = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mCurrentDds:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mCurrentDds:I

    return v1
.end method

.method getFirstWaitingRequest()Landroid/net/NetworkRequest;
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mInbox:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mInbox:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mInbox:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$NetworkRequestInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$NetworkRequestInfo;->mRequest:Landroid/net/NetworkRequest;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getSubIdFromNetworkRequest(Landroid/net/NetworkRequest;)I
    .locals 2
    .param p1, "n"    # Landroid/net/NetworkRequest;

    .prologue
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    .local v0, "subController":Lcom/android/internal/telephony/SubscriptionController;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdFromNetworkRequest(Landroid/net/NetworkRequest;)I

    move-result v1

    return v1
.end method

.method isAlreadyAccepted(Landroid/net/NetworkRequest;)Z
    .locals 6
    .param p1, "nr"    # Landroid/net/NetworkRequest;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mInbox:Ljava/util/List;

    monitor-enter v4

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mInbox:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mInbox:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DdsScheduler$NetworkRequestInfo;

    .local v1, "tempNrInfo":Lcom/android/internal/telephony/dataconnection/DdsScheduler$NetworkRequestInfo;
    iget-object v5, v1, Lcom/android/internal/telephony/dataconnection/DdsScheduler$NetworkRequestInfo;->mRequest:Landroid/net/NetworkRequest;

    invoke-virtual {v5, p1}, Landroid/net/NetworkRequest;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-boolean v5, v1, Lcom/android/internal/telephony/dataconnection/DdsScheduler$NetworkRequestInfo;->mAccepted:Z

    if-ne v5, v3, :cond_0

    move v2, v3

    :cond_0
    monitor-exit v4

    .end local v1    # "tempNrInfo":Lcom/android/internal/telephony/dataconnection/DdsScheduler$NetworkRequestInfo;
    :goto_1
    return v2

    .restart local v1    # "tempNrInfo":Lcom/android/internal/telephony/dataconnection/DdsScheduler$NetworkRequestInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "tempNrInfo":Lcom/android/internal/telephony/dataconnection/DdsScheduler$NetworkRequestInfo;
    :cond_2
    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method isAnyRequestWaiting()Z
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mInbox:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mInbox:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isDdsSwitchRequired(Landroid/net/NetworkRequest;)Z
    .locals 3
    .param p1, "n"    # Landroid/net/NetworkRequest;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->getSubIdFromNetworkRequest(Landroid/net/NetworkRequest;)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->getCurrentDds()I

    move-result v1

    if-eq v0, v1, :cond_0

    const-string v0, "DdsScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DDS switch required for req = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, "DdsScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DDS switch not required for req = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method isMultiDataSupported()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, "flag":Z
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->getMaxDataAllowed()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method markAccepted(Landroid/net/NetworkRequest;)V
    .locals 4
    .param p1, "req"    # Landroid/net/NetworkRequest;

    .prologue
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mInbox:Ljava/util/List;

    monitor-enter v3

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mInbox:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mInbox:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DdsScheduler$NetworkRequestInfo;

    .local v1, "tempNrInfo":Lcom/android/internal/telephony/dataconnection/DdsScheduler$NetworkRequestInfo;
    iget-object v2, v1, Lcom/android/internal/telephony/dataconnection/DdsScheduler$NetworkRequestInfo;->mRequest:Landroid/net/NetworkRequest;

    invoke-virtual {v2, p1}, Landroid/net/NetworkRequest;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/telephony/dataconnection/DdsScheduler$NetworkRequestInfo;->mAccepted:Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "tempNrInfo":Lcom/android/internal/telephony/dataconnection/DdsScheduler$NetworkRequestInfo;
    :cond_1
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method notifyRequestAccepted(Landroid/net/NetworkRequest;)V
    .locals 4
    .param p1, "nr"    # Landroid/net/NetworkRequest;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->isAlreadyAccepted(Landroid/net/NetworkRequest;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->markAccepted(Landroid/net/NetworkRequest;)V

    const-string v1, "DdsScheduler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Accepted req = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    .local v0, "subController":Lcom/android/internal/telephony/SubscriptionController;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SubscriptionController;->notifyOnDemandDataSubIdChanged(Landroid/net/NetworkRequest;)V

    .end local v0    # "subController":Lcom/android/internal/telephony/SubscriptionController;
    :goto_0
    return-void

    :cond_0
    const-string v1, "DdsScheduler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Already accepted/notified req = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method removeRequest(Landroid/net/NetworkRequest;)V
    .locals 4
    .param p1, "req"    # Landroid/net/NetworkRequest;

    .prologue
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mInbox:Ljava/util/List;

    monitor-enter v3

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mInbox:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mInbox:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DdsScheduler$NetworkRequestInfo;

    .local v1, "tempNrInfo":Lcom/android/internal/telephony/dataconnection/DdsScheduler$NetworkRequestInfo;
    iget-object v2, v1, Lcom/android/internal/telephony/dataconnection/DdsScheduler$NetworkRequestInfo;->mRequest:Landroid/net/NetworkRequest;

    invoke-virtual {v2, p1}, Landroid/net/NetworkRequest;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mInbox:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "tempNrInfo":Lcom/android/internal/telephony/dataconnection/DdsScheduler$NetworkRequestInfo;
    :cond_1
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method triggerSwitch(Landroid/net/NetworkRequest;)V
    .locals 3
    .param p1, "n"    # Landroid/net/NetworkRequest;

    .prologue
    const/4 v0, 0x0

    .local v0, "multiDataSupported":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->isMultiDataSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    const-string v1, "DdsScheduler"

    const-string v2, "Simultaneous dual-data supported"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->requestPsAttach(Landroid/net/NetworkRequest;)V

    :goto_1
    return-void

    :cond_0
    const-string v1, "DdsScheduler"

    const-string v2, "Simultaneous dual-data NOT supported"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->requestDdsSwitch(Landroid/net/NetworkRequest;)V

    goto :goto_1
.end method

.method public updateCurrentDds(Landroid/net/NetworkRequest;)V
    .locals 3
    .param p1, "n"    # Landroid/net/NetworkRequest;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->getSubIdFromNetworkRequest(Landroid/net/NetworkRequest;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mCurrentDds:I

    const-string v0, "DdsScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentDds = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mCurrentDds:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
